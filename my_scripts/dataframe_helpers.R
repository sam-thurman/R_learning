# IMPORTS

subset_df_by_categoriocal_column <- function(dataframe, col_name) {
  
  categories <- unique(dataframe[[col_name]])
  categories <- as.character(categories)
  # init empty list and index counter for for-loop
  data_subsets <- list('category_list'=categories)
  i <- 1
  
  for (curr_cat in categories) {
    data_subsets[[curr_cat]] <- dataframe[ which(dataframe[[col_name]] == curr_cat),]
  }
  
  return(data_subsets)
}

chickwts <- datasets::chickwts
results <- subset_dataframe_by_categorical_column(chickwts, 'feed')
results$horsebean
results$category_list

typeof(as.character(unique(chickwts$feed)))


