#' Simulated Ebola outbreak
#'
#' This simulated outbreak of Ebola Virus Disease matches some key properties of the West African
#' Ebola outbreak of 2014-2015. Specifically, care was taken to use realistic delays (incubation
#' period, serial interval, time to hospitalisation, etc.) and reproduction number (see references).
#'
#' This dataset is used for teaching purposes during Imperial College's short course on infectious
#' disease modelling. The exercise aims to simulate the response to an Ebola outbreak taking place
#' in a single large city, and evaluate the impact of an intervention (increased bed capacity).
#'
#' Note that to ensure realism, some errors have been introduced in this dataset. These can be
#' identified as negative incubation periods (delay from infection to onset of symptoms). See
#' example for a simple way to identify these cases. The dataset \code{ebola_sim_clean} is the same
#' dataset, only dates of infection and onset have been set to 'NA'.
#'
#' @docType data
#'
#' @rdname ebola_sim
#'
#' @aliases ebola_sim
#'
#' @author Data simulated by Pierre Nouvellet (\email{p.nouvellet@@imperial.ac.uk}). Transfer to R
#' and documentation by Thibaut Jombart (\email{thibautjombart@@gmail.com}).
#'
#' @references
#'
#' WHO Ebola Response Team. 2014. Ebola virus disease in West Africa--the first 9 months
#' of the epidemic and forward projections. The New England journal of medicine 371:1481–1495.
#'
#' WHO Ebola Response Team, J. Agua-Agum, A. Ariyarajah, B. Aylward, I. M. Blake, R. Brennan,
#' A. Cori, C. A. Donnelly, I. Dorigatti, C. Dye, T. Eckmanns, N. M. Ferguson, P. Formenty,
#' C. Fraser, E. Garcia, T. Garske, W. Hinsley, D. Holmes, S. Hugonnet, S. Iyengar, T. Jombart,
#' R. Krishnan, S. Meijers, H. L. Mills, Y. Mohamed, G. Nedjati-Gilani, E. Newton, P. Nouvellet,
#' L. Pelletier, D. Perkins, S. Riley, M. Sagrado, J. Schnitzler, D. Schumacher, A. Shah, M. D. Van
#' Kerkhove, O. Varsaneux, and N. Wijekoon Kannangarage. 2015. West African Ebola epidemic after one
#' year--slowing but not yet under control. The New England journal of medicine 372:584–587.
#'
#' @examples
#' ## identify mistakes in data entry (negative incubation period)
#' mistakes <- which(ebola_sim$linelist$date_of_onset <= ebola_sim$linelist$date_of_infection)
#' mistakes
#' ebola_sim$linelist[mistakes, ]
#'
#' ## check that ebola_sim_clean is identical after removing mistakes
#' identical(ebola_sim_clean$linelist, ebola_sim$linelist[-mistakes, ])
#'
"ebola_sim"



#' @rdname ebola_sim
#' @aliases  ebola_sim_clean
#'
"ebola_sim_clean"
