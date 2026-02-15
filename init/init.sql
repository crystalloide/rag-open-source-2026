CREATE EXTENSION vector;
CREATE EXTENSION pgvectorscale;

CREATE TABLE documents (
    id SERIAL PRIMARY KEY,
    content TEXT,
    metadata JSONB,
    embedding VECTOR(1024),
    created_at TIMESTAMPTZ DEFAULT NOW()
);

SELECT * FROM pgvectorscale.create_distance_cosine('documents', 'embedding');
CREATE INDEX idx_content_gin ON documents USING gin(to_tsvector('english', content));
