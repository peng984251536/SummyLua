---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 98425.
--- DateTime: 2022/3/11 19:32
---
---
---lua的数据类型有：nil,boolean,number,string,function,table(表),userdata,thread(协程)
---
print("***所有复杂数据类型都是table***")

--数组,lua中索引从1开始
a = {1,2,3,4,nil,6,7,"123"}
print(a[1])
print(a[2])
print(#a) --打印表中的元素数量

print("******数组的遍历******")
for i = 1, #a do
    print(a[i])
end

print("******二维数组******")
a={
    {1,2,3},
    {4,5,6},
    {7,8,9}
}
for i = 1, #a do
    b=a[i]
    s=""
    for j = 1, #b do
        s = s.." "..b[j]
    end
    print(s)
end



