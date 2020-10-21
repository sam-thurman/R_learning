# IMPORTS


subset_list_by_categoriocal_column <- function(data, col_name) {
  # INPUT: data.frame or list object, column name to subset by
  #
  # RETURN: list containing new data.frame objects and a list of category names
  #         new data.frame objs will be subsets of 
  #-------------------------------------------------------
  
  # init master list containing list of categories in given column
  master_list <- list('category_list'=categories)
  
  #loop through categories
  for (curr_cat in master_list$category_list) {
    # create new title for data subset variable
    list_name <- paste(curr_cat, '_df', sep='')
    # append new subset of data to master list
    master_list[[list_name]] <- data[ which(data$col_name==curr_cat),]
  }
  
  return(master_list)
}



chickwts <- datasets::chickwts
typeof(chickwts)
results <- subset_list_by_categoriocal_column(chickwts, 'feed')
typeof(results)
results$category_list
results$horsebean_df
length(results) 
str(results)
