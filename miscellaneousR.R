setwd("C:/Users/JerrySoto/Desktop/Modelinghealth/Teaching/claseNov2712")
loadhistory(".Rhistory")  # savehistory(".Rhistory")
#     to load saved-workspace -->
load(".RDataclass") #save.image(".RDataclass")

vec1<-c(1,2,3)

vec2<-c(5,6,7)

vprot<-vec1*vec2

vsum<-vec1+vec2

vprot2<-subset(vprot,vprot[]<=5)

# Matrices

mat1 <- matrix (10:15 , nrow =3, ncol =2); mat1
mat2<-matrix(1:4,nrow=2,ncol=2);mat2

mat1 %*% mat2

mat2<-cbind(vec1,vec2)

mat3<-rbind(vec1,vec2)

# Listas

agent<-list(name="John Smith",gender="male" ,age=56)

# Input

csvFile<-read.csv("http://www.math.smith.edu/sasr/datasets/help.csv")

#csvLocal<-csv.read("C:/Users/JerrySoto/Desktop/Edmunds/dlxLead11241.csv,header=TRUE")



# Herramientas para programar

# Loops

Vec5<-rep(NA,27)

Vec5

for (j in 1:27) {Vec5[j]<-runif(1)}  #ponga un numero aleatorio uniforme
en cada elemento del vector Vec5

Vec5 # escriba el vector Vec5

# Noviembre 29  salvar arreglos localment

write.csv(csvFile,"csvFile112912.csv")

Vec5<-rep(NA,27)

for (j in 1:27){Vec5[j]<-runif(1)}


csvFile1<-as.matrix(csvFile)

up<-dim(csvFile1)[1]

for(j in 1:up){if(csvFile1[j,87]=="cocaine" ||
                    csvFile1[j,87]=="heroin")
{as.character(csvFile1[j,87]
              <-"complexMolecule")} }

#  Funciones
cube<-function(x){
  x^3 }

raceDist<-function(dataFrame){ #declaration
  denom<-length(dataFrame[,1]) # number of people in data.frame
  black<-subset(dataFrame,dataFrame[,88]=="black") #subFrame with only AA
  cat("% African Americans = ",100*(dim(black)[1]/denom),'\n')
  hispanic<-subset(dataFrame,dataFrame[,88]=="hispanic") #subFrame
  only Hisp
  cat("% Hispanic = ",100*(dim(hispanic)[1]/denom),'\n')
  other<-subset(dataFrame,dataFrame[,88]=="other") #allOther race-ethnicity
  cat("% Other = ",100*(dim(other)[1]/denom),'\n') #displayResultInConsole
  white<-subset(dataFrame,dataFrame[,88]=="white") #onlyWhites
  cat("% Caucasian = ",100*(dim(white)[1]/denom),'\n')}

# Graficas

plot(csvFile$age,csvFile$pcs,xlab="Age(y)",
     ylab="MCS",main="Plot of the Mental
      Composite Score Versus age in the HELP study")