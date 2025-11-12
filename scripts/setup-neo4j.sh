# REMEMBER to log in to the neo4j user (sudo -iu neo4j) before running, and running "neo4j start"

# sets environment variables in .env
if [[ -f .env ]]; then
    set -a
    # shellcheck disable=SC1091
    . ./.env
    if [[ -f .env.local ]]; then
        # shellcheck disable=SC1091
        . ./.env.local
    fi
    set +a
fi

echo "Adding constraints..."
cypher-shell \
    -a "$NEO4J_URI" \
    -u "$NEO4J_USER" \
    -p "$NEO4J_PWD" \
    -d "$NEO4J_DATABASE" \
    -f "./constraints.cypher"

echo "Adding vector indexes..."
cypher-shell \
    -a "$NEO4J_URI" \
    -u "$NEO4J_USER" \
    -p "$NEO4J_PWD" \
    -d "$NEO4J_DATABASE" \
    -f "./vector-indexes.cypher"
