---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 98425.
--- DateTime: 2022/3/12 22:40
---
deLog = function (s)
    print("********"..s.."********")
end

deLog("类和结构体")
Student = {
    name = "huang",
    --年龄
    age = 22,
    --性别
    sex = false,
    --成长函数
    Up = function()
        print("我成长了")
    end,
    Learn = function()
        print("好好学习，天天向上")
    end,
    GetInfo = function(Student)
        print("年龄"..Student.age)   --lua中直接声明一个变量它是全局的
        --print("性别",Student.sex)  --想要表明是表里面的需要明确
    end,
}
--c#要使用类是：1、实例化一个对象再使用 2、直接点出他的静态对象
--lua中用table模拟类，直接点就可以点出属性或方法
Student.Learn()
--Student.GetInfo({ age = 8 })
Student:GetInfo() --lua中:默认把自己传入参数中

function Student:GetInfo2()   --在函数声明中，self作为了表示第一个字符的关键字
    print("name:"..self.name) --:声明时，表达第一个参数
end

Student:GetInfo2()   --在外部使用表中的方法，:表示传入自己作为第一个参数
Student.GetInfo2({name = "hhhhhh"})

return "99"