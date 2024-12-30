sample1 = read.csv("주소")
read.csv("주소", fileencoding = "UTF-8")
read.csv("주소", fileencoding = "euc-kr")

엑셀 읽는법
data_sheet1 = read_excel("주소", sheet = 1)
data_sheet1 = read_excel("주소", sheet = 2, skip = 2)
p = data.frame(id=c(1,2),
               math=c(100,90),
               history=c(70,80))
q = data.frame(id=c(3,4,5),
               math=c(100,80,70),
               history=c(90,90,60))
r = data.frame(id=c(3,4,5),
               music=c(100,100))
rbind(p,q) #같은 변수를 가지는 데이터프레임
cbind(p,r) #id가 중복된다
cbind(p,q) #행의 수가 같아야한다



