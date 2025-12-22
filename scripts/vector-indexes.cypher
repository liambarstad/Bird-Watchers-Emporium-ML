// Fact text
MATCH (f:Introduction
|Identification
|Similar_Species
|Systematics_History
|Geographic_Variation 
|Subspecies 
|Distribution 
|General_Habitat 
|Movements_and_Migration 
|Diet_and_Foraging 
|Sounds_and_Vocal_Behavior 
|Breeding 
|Conservation_Status 
|Vernacular_Names 
|Hybridization 
|Eggs 
|Parental_Care 
|Plumages 
|Migration_Overview 
|Other 
|Nest 
|Predation 
|Measures_of_Breeding_Activity 
|Causes_of_Mortality 
|Population_Regulation 
|Historical_Changes_to_the_Distribution 
|Sexual_Behavior 
|Population_Spatial_Metrics 
|Social_and_Interspecific_Behavior 
|Diet 
|Agonistic_Behavior 
|Phenology 
|Nest_Site 
|Incubation 
|Hatching 
|Cooperative_Breeding 
|Population_Status 
|Effects_of_Human_Activity 
|Young_Birds 
|Life_Span_and_Survivorship 
|Bare_Parts 
|Feeding 
|Vocalizations 
|Fledgling_Stage 
|Management 
|Related_Species 
|Fossils 
|Locomotion 
|Molts 
|Measurements 
|Nonvocal_Sounds 
|Behavior 
|Demography_and_Populations 
|Priorities_for_Future_Research 
|Food_Selection_and_Storage 
|Nutrition_and_Energetics 
|Metabolism_and_Temperature_Regulation
|Drinking_Pellet_Casting_and_Defecation 
|Brood_Parasitism 
|Similar_Species_Summary 
|Dispersal_and_Site_Fidelity 
|Pathogens_and_Parasites 
|Self_Maintenance 
|Habitat 
|Nonmigratory_Movements 
|Habitat_in_Breeding_Range 
|Habitat_in_Nonbreeding_Range
|Timing_and_Routes_of_Migration
|Migratory_Behavior 
|Control_and_Physiology_of_Migration
|Field_Identification)
SET f:Facts;

CREATE VECTOR INDEX facts_embedding_idx IF NOT EXISTS
FOR (f:Facts) ON (f.embedding)
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