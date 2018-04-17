#' @importFrom flowCore read.FCS colnames transformList transform
#' @export
read_and_transform <-
    function(file, transformation = asinh)
{
    ntl <- read.FCS(file, alter.names = TRUE, transformation = FALSE)
    colnames <- colnames(ntl)
    transformList <- transformList(colnames[6:8], asinh)
    transform(ntl, transformList)
}
