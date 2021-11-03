## @knitr sharedFunctions


numbertext<-function(number){
  if(number<20) {
    words(number)
  } else {
    formatC(number,big.mark=",")
  }
}

capitalize <- function(x) {
 substr(x, 1, 1) <- toupper(substr(x, 1, 1))
 x
}

LocalITISGetRank<-function(ITISTSN,src=ITISsource) {
  sql<-paste0(
    "SELECT
      taxonomic_units.complete_name,
	    taxonomic_units.rank_id
    FROM taxonomic_units
    WHERE ((taxonomic_units.tsn)='",ITISTSN,"')"
  )

  result<-taxizedb::sql_collect(src,sql)
  result<-result$rank_id

  return(result)

}

vLocalITISGetRank<-Vectorize(LocalITISGetRank)

LocalITISGetTSN<-function(SciName,src=ITISsource) {
  sql<-paste0(
    "SELECT
      taxonomic_units.complete_name,
	    taxonomic_units.tsn
    FROM taxonomic_units
    WHERE ((taxonomic_units.complete_name)='",SciName,"')"
  )

  result<-taxizedb::sql_collect(src,sql)
  result<-result$tsn

  return(result)

}

vLocalITISGetTSN<-Vectorize(LocalITISGetTSN)

LocalITISGetITISSci<-function(TSN,src=ITISsource) {
  sql<-paste0(
    "SELECT
      taxonomic_units.complete_name,
	    taxonomic_units.tsn
    FROM taxonomic_units
    WHERE ((taxonomic_units.tsn)='",TSN,"')"
  )

  tryCatch({
    result<-taxizedb::sql_collect(src,sql)
    result<-result$complete_name
    return(result)
  }, error=function(cond) {
    return(NA)
  }, warning=function(cond) {
    return(NA)
  }
  )
}

vLocalITISGetITISSci<-Vectorize(LocalITISGetITISSci)

LocalITISGetSynonyms<-function(TSN,src=ITISsource) {

  sql<-paste0(
    "SELECT
	    taxonomic_units.complete_name,
	    synonym_links.tsn,
	    taxonomic_units.name_usage,
	    taxonomic_units.unaccept_reason,
	    taxonomic_units.phylo_sort_seq,
	    taxonomic_units.parent_tsn,
	    taxonomic_units.rank_id
    FROM synonym_links
    INNER JOIN taxonomic_units ON synonym_links.tsn = taxonomic_units.tsn
    WHERE (((synonym_links.tsn_accepted)=",TSN,"))

    UNION

    SELECT
    	taxonomic_units.complete_name,
    	synonym_links.tsn_accepted AS tsn,
    	taxonomic_units.name_usage,
    	taxonomic_units.unaccept_reason,
    	taxonomic_units.phylo_sort_seq,
    	taxonomic_units.parent_tsn,
    	taxonomic_units.rank_id
    FROM synonym_links
    INNER JOIN taxonomic_units ON synonym_links.tsn_accepted = taxonomic_units.tsn
    WHERE (((synonym_links.tsn)=",TSN,"))"
  )

  result<-taxizedb::sql_collect(sql,src=ITISsource)

  return(result)
}


LocalITISGetChildren <- function(TaxonomicSerialNumber,src=ITISsource) {

  # Get children of the parent

  sql2<-paste0(
    "SELECT
	    taxonomic_units.complete_name,
    	hierarchy.tsn,
	    taxonomic_units.name_usage,
	    taxonomic_units.unaccept_reason,
	    taxonomic_units.phylo_sort_seq,
	    taxonomic_units.parent_tsn,
	    taxonomic_units.rank_id
    FROM hierarchy INNER JOIN taxonomic_units ON hierarchy.tsn = taxonomic_units.tsn
    WHERE ((hierarchy.hierarchy_string) Like '%-",TaxonomicSerialNumber,"-%')
    AND ((hierarchy.hierarchy_string) <> '",TaxonomicSerialNumber,"')"
  )

  result<-taxizedb::sql_collect(sql2,src=ITISsource,sql2)
  result<-subset(result,TSN != TaxonomicSerialNumber)

  return(result)

}

LocalITISGetParentSpecies <- function(TaxonomicSerialNumber,src=ITISsource) {

  # Get children of the parent

  sql2<-paste0(
    "SELECT *
      FROM taxonomic_units
      WHERE (((taxonomic_units.tsn)=",TaxonomicSerialNumber,"))"
  )

  result<-taxizedb::sql_collect(sql2,src=ITISsource,sql2)
  result<-paste(result$unit_name1,result$unit_name2)

  return(result)

}

vLocalITISGetParentSpecies<-Vectorize(LocalITISGetParentSpecies)

