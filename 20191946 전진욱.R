## 과제 A  2주차차

# 1-1. my_data.xlsx 의 첫번째 시트를 읽어 my_sheet1으로 저장하세요.
library(readxl)
data_sheet1 = read_excel("C:\Users\HYUNCOM/Data_Vizual/data/a_excel_file.xlsx", sheet=1)
my_sheet1
View(my_sheet1)
# 1-2. 행과 열의 수는 몇 개 인가? 적절한 함수를 이용.
r1 = nrow(my_sheet1)
r1
c1 = ncol(my_sheet1)
c1
# 1-3. 변수 이름을 쓰세요. 적절한 함수를 이용.
names(my_sheet1)
# 1-4. amount 의 최대값과 평균을 구하세요.
ans1 = max(my_sheet1$amount)
ans1
ans2 = mean(my_sheet1$amount)
ans2
# 1-5. price 의 최소값과 표준편차를 구하세요.
prs3 = min(my_sheet1$price)
prs3
prs4 = sd(my_sheet1$price)
prs4
# 1-6. 변수이름을 M1, M2, M3, M4 로 변경하세요. paste0 이용
names(data_sheet1) = paste0("M",1:4)
View(my_sheet1)
# 2-1. my_data.xlsx 의 4번째 시트를 읽어 my_sheet4으로 저장하세요.
data_sheet4 = read_excel("C:\Users\HYUNCOM/Data_Vizual/data/a_excel_file.xlsx", sheet=4)
# 2-2. 행과 열의 수는 몇 개 인가? 적절한 함수를 이용.
r2 = nrow(my_sheet4)
r2
c2 = ncol(my_sheet4)
c2
# 2-3. 변수 이름을 쓰세요. 적절한 함수를 이용.
names(my_sheet4)
# 2-4. age 의 최대값과 평균을 구하세요.
ags1 = max(my_sheet4$age)
ags1
ags2 = mean(my_sheet4$age)
ags2
# 2-5. height 의 최소값과 표준편차를 구하세요.
hes1 = min(my_sheet4$height)
hes1
hes2 = sd(my_sheet4$height)
hes2
# 2-6. 변수이름을 V1, V2, V3, V4 로 변경하세요. paste0 이용
names(data_sheet4) = c(paste0("v",1:4))
View(my_sheet4)
# 1. 엑셀에서 "a.csv" 파일을 만드시오. 변수는 x, y 두 개이고, 
a = data.frame(x=c(1,2,3),y=c(50,30,10))
a
getwd()
write.csv(a,file="a.csv")
# x 변수의 값은 1, 2, 3, y 변수의 값은 50,30,10 입니다.  

# 2. 1에서 만든 a.csv를 R에서 읽어 b로 저장하시오.
b = read.csv("C:\Users\HYUNCOM\Desktop\Data_Vizual\a.csv")
b
View(b)

# 3. b의 변수이름을 출력하시오. b의 행과 열의 수를 출력하시오. 함수 이용.
names(b) 
b1 = nrow(b)
b1
b2 = ncol(b)
b2
# 4. b의 변수이름 x, y를 c1, c2로 변경하시오. paste0()를 사용하시오. 
names(b) = c("X",paste0("c",1:2))
View(b)
# 5. 엑셀에서 "p.xlsx" 파일을 만드시오. 변수는 x, y 두 개이고, 
#      x 변수의 값은 4, 5, 6, y 변수의 값은 10, 30, 80 입니다. 
p = data.frame(x = c(4,5,6),y = c(10,30,80))
p
install.packages("writexl")
library(writexl)
write_xlsx(p,"p.xlsx")
# 6. 5에서 만든 "p.xlsx"를 R에서 읽어 d로 저장하시오.
d = read_excel("C:\Users\HYUNCOM\Desktop\Data_Vizual\p.xlsx")
d
View(d)

# 7. 2의 b와 6의 d를 합치시오. 
b = read.csv("C:\Users\HYUNCOM\Desktop\Data_Vizual\a.csv")
b
A = intersect(colnames(b),colnames(d))
e = rbind(b[A],d[A])
e
# 8. d의변수 y를 z로 변경하시오.
names(d) = c("x","z")
View(d)
# 9. 8의 d와 2의 b를 결합하시오. 단, merge를 사용하고, by=x, all=T를 사용하시오.
b = read.csv("C:\Users\HYUNCOM\Desktop\Data_Vizual\a.csv")
b
merge(b,d,by="x",all = T)

# 10. 다음을 R에서 실행하지 않고 결과를 직접 쓰시오. 오류가 나는 것도 있습니다. 

p = data.frame(id=c(1,2,3),
               
               math=c(100,90,95), 
               
               history=c(70,80,90))

q = data.frame(id=c(3,4,5), 
               
               math=c(100,80,70), 
               
               history=c(90,90,60))

r=data.frame(id=c(1,5), 
             
             music=c(80,100))

rbind(p,q)
#id math history
1  1  100  70
2  2   90  80
3  3   95  90
4  3  100  90
5  4   80  90
6  5   70  60
rbind(p,r)   #열의 수가 일치하지않아 오류가남
#id math history music
1 1 100 70 80
2 2 90 80
3 3 95 90
4 5        100
cbind(p,q)
#id math history id math history
3  1  100      70  3  100      90
4  2   90      80  4   80      90
5  3   95      90  5   70      60  
cbind(p,r)   #행의수가 안맞아서 오류가남
#id math history id math history
1  1  100 70    1  80      
2  2   90 80    5 100      
3  3   95 90  
cbind(q,r)   #행의수가 안맞아서 오류가남
#id math history id math history
1  1  100 70    1  80      
2  2   90 80    5 100      
3  3   95 90
merge(p,r, by='id')  # 서로의 id가 같고, 값이 있는것만 출력됨.
#id math history music
1  1  100      70    80
merge(q,r, by='id')   # 서로의 id가 같고, 값이 있는것만 출력됨.
#id math history music
1  5   70      60   100
merge(q,r, by='id', all=T)
#id math history music   # 서로의 데이터 안에 id가 2인 관측치는 없기 때문에 제외하고 나옴.
1  1   NA      NA    80
2  3  100      90    NA
3  4   80      90    NA
4  5   70      60   100
merge(p,q, by='id',all.x = T)
#id math.x history.x math.y history.y
1  1    100        70     NA        NA
2  2     90        80     NA        NA
3  3     95        90    100        90
merge(p,q, by='id', all=T)     #모든 관측치가 출력되는 대신 값이 존재하지 않는 부분은 NA로 출력됨
#id math.x history.x math.y history.y   
1  1    100        70     NA        NA
2  2     90        80     NA        NA
3  3     95        90    100        90
4  4     NA        NA     80        90
5  5     NA        NA     70        60


#11. 위 10을 실행하여 결과를 비교하시오. 
