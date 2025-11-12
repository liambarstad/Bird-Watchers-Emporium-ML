// Fact text
CREATE VECTOR INDEX fact_embedding_idx IF NOT EXISTS
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