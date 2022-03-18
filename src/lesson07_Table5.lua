---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 98425.
--- DateTime: 2022/3/13 19:41
---

function deLog(s)
    print("********"..s.."********")
end

function delogTable(aa)
    for k,v in ipairs(aa) do
        print("ipairs迭代器遍历："..k.."_"..v.name)
    end
end


deLog("表的公共操作")
local t = {{age = 10,name = "10"},{age = 12,name = "12"}}
local t_1 = {age = 22,name="22"}

deLog("插入")
table.insert(t,t_1)
print(#t)

deLog("删除")--只填一个参数时，默认移除最后一个值
--table.remove(t,1) --填两个参数时，移除第二个所指向的索引
--delogTable(t)

deLog("排序") --默认只能排序数字，可以像c#的排序一样传入一个函数，执行函数规则
                 --函数返回true时说明按照这个顺序排，返回false是说明按这个反顺序排
table.sort(t,function(a, b)
    if a.age < b.age then
        return true
    end
end)
delogTable(t)


deLog("拼接")
local rrr = {"看看","人家","九神"}
local str = table.concat(rrr," ")
print(str)

return t_1

