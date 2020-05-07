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

LocalITISGetTSN<-function(SciName,src=ITISsource) {
  sql<-paste0(
    "SELECT
      public.taxonomic_units.complete_name,
	    public.taxonomic_units.tsn
    FROM public.taxonomic_units
    WHERE ((public.taxonomic_units.complete_name)='",SciName,"')"
  )

  result<-taxizedb::sql_collect(src,sql)
  result<-result$tsn

  return(result)

}

LocalITISGetITISSci<-function(TSN,src=ITISsource) {
  sql<-paste0(
    "SELECT
      public.taxonomic_units.complete_name,
	    public.taxonomic_units.tsn
    FROM public.taxonomic_units
    WHERE ((public.taxonomic_units.tsn)='",TSN,"')"
  )

  result<-taxizedb::sql_collect(src,sql)
  result<-result$complete_name

  return(result)

}

LocalITISGetSynonyms<-function(TSN,src=ITISsource) {

  sql<-paste0(
    "SELECT
	    public.taxonomic_units.complete_name,
	    public.synonym_links.tsn,
	    public.taxonomic_units.name_usage,
	    public.taxonomic_units.unaccept_reason,
	    public.taxonomic_units.phylo_sort_seq,
	    public.taxonomic_units.parent_tsn,
	    public.taxonomic_units.rank_id
    FROM public.synonym_links
    INNER JOIN public.taxonomic_units ON public.synonym_links.tsn = public.taxonomic_units.tsn
    WHERE (((public.synonym_links.tsn_accepted)=",TSN,"))

    UNION

    SELECT
    	public.taxonomic_units.complete_name,
    	public.synonym_links.tsn_accepted AS tsn,
    	public.taxonomic_units.name_usage,
    	public.taxonomic_units.unaccept_reason,
    	public.taxonomic_units.phylo_sort_seq,
    	public.taxonomic_units.parent_tsn,
    	public.taxonomic_units.rank_id
    FROM public.synonym_links
    INNER JOIN public.taxonomic_units ON public.synonym_links.tsn_accepted = public.taxonomic_units.tsn
    WHERE (((public.synonym_links.tsn)=",TSN,"))"
  )

  result<-taxizedb::sql_collect(sql,src=ITISsource)

  return(result)
}


LocalITISGetChildren <- function(TSN,src=ITISsource) {

  # Get children of the parent

  sql2<-paste0(
    "SELECT
	    public.taxonomic_units.complete_name,
    	public.hierarchy.tsn,
	    public.taxonomic_units.name_usage,
	    public.taxonomic_units.unaccept_reason,
	    public.taxonomic_units.phylo_sort_seq,
	    public.taxonomic_units.parent_tsn,
	    public.taxonomic_units.rank_id
    FROM public.hierarchy INNER JOIN public.taxonomic_units ON public.hierarchy.tsn = public.taxonomic_units.tsn
    WHERE ((public.hierarchy.hierarchy_string) Like '%-",TSN,"-%')
    AND ((public.hierarchy.hierarchy_string) <> '",TSN,"')"
  )

  result<-taxizedb::sql_collect(sql2,src=ITISsource,sql2)
  result<-subset(result,tsn != TSN)

  return(result)

}
