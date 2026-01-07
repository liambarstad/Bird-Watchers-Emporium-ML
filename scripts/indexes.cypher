CREATE VECTOR INDEX facts_embedding_idx IF NOT EXISTS
FOR (f:Fact) ON (f.embedding)
OPTIONS {
    indexConfig: {
        `vector.dimensions`: 2048,
        `vector.similarity_function`: 'cosine'
    }
};

// Image content
CREATE VECTOR INDEX image_embedding_idx IF NOT EXISTS
FOR (i:Image) ON (i.embedding)
OPTIONS {
    indexConfig: {
        `vector.dimensions`: 2048,
        `vector.similarity_function`: 'cosine'
    }
};

// Lucene fulltext
CREATE FULLTEXT INDEX fact_text_ft IF NOT EXISTS
FOR (f:Fact)
ON EACH [f.text]