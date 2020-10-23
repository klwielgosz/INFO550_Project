# install packages

install_pkgs <- row.names(installed.packages())
pkgs <- c("ggplot2")
for(p in pkgs){
  if(!(p %in% install_pkgs)){
    install.packages(p)
  }
}