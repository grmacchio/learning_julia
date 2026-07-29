#=
T: Learn Julia in 4 hours in 4K | Full Course | Julia for Absolute Beginners
A: doggo dot jl
L: https://www.youtube.com/watch?v=KlorfxsdWDw
=#

#=
Run this script using VS Code play button. After ones runs the script, they
should see the output in the REPL, which stands for Read-Evaluate-Print-Loop.
The following is a collection of helpful commands.
    (1) CMD + K        ->    clear the REPL output
    (2) CMD + /        ->    comment or uncomment a line of code
    (3) CTL + ENTR     ->    eval. line, print line, and stay
    (4) SHFT + ENTR    ->    eval. line, print line, and next line
    (5) OPT + ENTR     ->    eval. all lines, print last line, and go to end
The print statements below are used to show what one would expect to see in
REPL after running each line of code.
=#

# Use print statements
println("println(\"Hello, World!\")")
print("=> ")
println("Hello, World!\n")

# Use short-circuit evaluations like && or ||
le1 = (3 < 2) || (2 < 3)
println("le1 = (3 < 2) || (2 < 3))")
println("=> "* string(le1) * "\n")

# Use booleans as numerical valued dtype
ne1 = false + false + true
println("ne1 = false + false + true")
println("=> " * string(ne1) * "\n")

# Use typeof() and see that the default float dtype is Float64
r1 = 1.2
println("r1 = 1.2")
println("=> " * string(r1))
ty1 = typeof(r1)
println("ty1 = typeof(r1)")
println("=> " * string(ty1))
r2::Float32 = 1.2
println("r2::Float32 = 1.2")
println("=> " * string(r2))
ty2 = typeof(r2)
println("ty2 = typeof(r2)")
println("=> " * string(ty2) * "\n")

# Use rational numbers, which are denoted by the dtype Rational
q1 = 1//3
println("q1 = 1//3")
println("=> " * string(q1))
ty1 = typeof(q1)
println("ty1 = typeof(q1)")
println("=> " * string(ty1))
q2 = 1//7
println("q2 = 1//7")
println("=> " * string(q2))
ty2 = typeof(q2)
println("typeof(ty2)")
println("=> " * string(ty2))
q3 = q1 + q2
println("q3 = q1 + q2")
println("=> " * string(q3))
ty3 = typeof(q3)
println("ty3 = typeof(q3)")
println("=> " * string(ty3) * "\n")

# Use irrational numbers, which are denoted by the dtype Irrational{:symbol}
ir1 = π
println("ir1 = π")
println("=> " * string(ir1))
ty1 = typeof(ir1)
println("typeof(ir1)")
println("=> " * string(ty1))
ir2 = ℯ
println("ir2 = ℯ")
println("=> " * string(ir2))
ty2 = typeof(ir2)
println("typeof(ir2)")
println("=> " * string(ty2) * "\n")

# Use round() to round an irrational number to five decimal places
r1 = round(π, digits=5)
println("round(π, digits=5)")
println("=> " * string(r1) * "\n")

# Use //, div(), and ÷
z1::Int64 = 4
println("z1::Int64 = 4")
println("=> " * string(z1))
z2::Int64 = 2
println("z2::Int64 = 2")
println("=> " * string(z2))
r1 = z2 / z1
println("r1 = z2 / z1")
println("=> " * string(r1))
ty1 = typeof(r1)
println("ty1 = typeof(r1)")
println("=> " * string(ty1))
q1 = z2 // z1
println("q1 = z2 // z1")
println("=> " * string(q1))
ty2 = typeof(q1)
println("ty2 = typeof(q1)")
println("=> " * string(ty2))
z3 = div(z2, z1)
println("z3 = div(z2, z1)")
println("=> " * string(z3))
ty3 = typeof(z3)
println("ty3 = typeof(z3)")
println("=> " * string(ty3))
z4 = z2 ÷ z1
println("z4 = z2 ÷ z1")
println("=> " * string(z4))
ty4 = typeof(z4)
println("ty4 = typeof(z3)")
println("=> " * string(ty4))
r2 = 5.6
println("r2 = 5.6")
println("=> " * string(r2))
r3 = r1 / r2
println("r3 = r1 / r2")
println("=> " * string(r3))
try
    println("r1 // r2")
    r1 // r2
catch e
    s = sprint(showerror, e)
    s = first(split(s, "\n"; limit=2))
    println("=> " * s)
end
z5 = div(r1, r2)
println("z5 = div(r1, r2)")
println("=> " * string(z5))
ty5 = typeof(z5)
println("ty5 = typeof(z5)")
println("=> " * string(ty5))
z6 = r1 ÷ r2
println("z6 = r1 ÷ r2")
println("=> " * string(z6))
ty6 = typeof(z6)
println("ty6 = typeof(z6)")
println("=> " * string(ty6) * "\n")

# Use a quote in strings
s1 = "\", \""
println("s1 = \"\\\", \\\"\"")
println("=> " * string(s1) * "\n")

# Use a tab in strings
s1 = "\t after"
println("s1 = \"\\t after\"")
println("=> " * string(s1) * "\n")

# Use concatenation
s1 = "Concat"
println("s1 = \"Concat\"")
s2 = "enation"
println("s2 = \"enation\"")
s3 = s1 * s2
println("s3 = s1 * s2")
println("=> " * string(s3) * "\n")

# Use insertion
s1 = "Insert"
println("s1 = \"Insert\"")
s2 = "ion"
println("s2 = \"ion\"")
s3 = "$s1$s2"
println("s3 = \"$s1$s2\"")
println("=> " * string(s3) * "\n")

# Use a math character, which is done by, for example, \alpha<tab>
mc1 = 'α'
println("mc1 = 'α'")
ty1 = typeof('α')
println("ty1 = typeof('α')")
println("=> " * string(ty1) * "\n")

# emojis are \:dog:<tab>
🐶
'🐶'
println('🐶')
typeof('🐶')

# vectors
cv = [1, 2, 3]
rv1 = [1 2 3]
rv2 = Float32[1 2 3]

# elements
cv[1]
rv1[1, 2]
rv1[2]
rv1[2] = 5
rv1[2]

# length
length(cv)
length(rv1)

# sum
sum(cv)
sum(rv1)

# output descending sort
sort(cv; rev = true)
cv

# permanent ascending sort
sort!(cv)
cv

# the ! is a "bang" and signals to user that the input data is being modified

# add an element to the end of a vector
push!(cv, 4)
cv

# remove an element from the end of a vector and return it
pop!(cv)
cv

# matrices
m1 = [1 2 3; 4 5 6; 7 8 9]

# column-major order
m1[1, 2]
m1[4]

# multiple dtype vectors
v2 = [1, 1.0, 1//3, π, '🐶', "doggo", [7 8 9]]
typeof(v2)
println(v2)

# tuples are immutable
t1 = (1, 1.0, 1//3, π, '🐶', "doggo", [7 8 9])
typeof(t1)
println(t1)
t2 = (1, 2, 3)
sort(t2, rev=true)
sort!(t2, rev=true)

# breaking up tuple
(a, b, c) = t2
a
b
c

# named tuples use key look up
nt1 = (e1=1, e2=2, e3=3)
nt1.e1

# symbols are data form of variables 
:sy1

# symbols can be can be linked to variables below
eval(nt1)
eval(:nt1)

# dictionaries use hash-table lookup (encoding then search in nghd)
dog = Dict("name" => "doggo", :age => 5, 't' => "golden retriever")
dog["name"]
dog[:age]
dog['t']
dog["name"] = 1234
dog["name"]
dog[:new] = "new value"
dog

# structs
struct Dog
    name::String
    age::Integer
    breed::String
end
mutable struct MutableDog
    name::String
    age::Integer
    breed::String
end
dog1 = Dog("doggo", 5, "golden retriever")
dog2 = MutableDog("doggo", 5, "golden retriever")
dog1.name
dog2.name
dog2.name = 1
dog2.new = "new value"
dog1.name = "doggo1"
dog2.name = "doggo2"
dog1.name
dog2.name
typeof(dog1)

# commas
z1, z2 = 3, 7
z1
z2

# tasks
task() = println("This a tasks")
task()

# if statement
function check1_x(x)
    if x > 1
        println("x is greater than 1")
    elseif x < 1
        println("x is less than 1")
    else
        println("x is equal to 1")
    end
end
check1_x(0)
check1_x(1)
check1_x(2)

# ternary operator
function check2_x(x)
    x > 1 ?
    println("x is greater than 1") :
    (x < 1 ? println("x is less than 1") : println("x is equal to 1"))
end
check2_x(0)
check2_x(1)
check2_x(2)

# while loop
i = 1
while i <= 5
    println(i)
    i += 1
end

# for loop
for i = 1:5
    println(i)
end
for i = 1:2:10
    println(i)
end
for i = 10:-2:1
    println(i)
end

# collection loop
v3 = [1, 2, 3, 4, 5]
for i in v3
    println(i)
end
s3 = "Hello, World!"
for c in s3
    println(c)
end
dict = Dict("name" => "doggo", :age => 5, 't' => "golden retriever")
for (key, val) in dict
    println("key: $key, val: $val")
end

# comprehension
v4 = [i + 1 for i in 1:5]

# short function
f(v, w) = sqrt(v^2 + w^2)
f(1, 2)

# generic function, 2 methods
function f2(x::Int64)
    return "Int64"
end
function f2(x::Float64)
    return "Float64"
end
function f2(x::Any)
    return "Any"
end
f2(1)
f2(1.0)
f2('a')
methods(f2)

# anonymous function
v5 = ["One", "Two", "Three"]
map(length, v5)
map(x -> length(x) + 2, v5)

# random library
using Random: seed!
seed!(1)
rand(1)
rand(2)
seed!(1)
rand(1)
rand(2)

# statistics library
using Statistics: mean, std
v6 = rand(1_000)
mean(v6)
std(v6)

# standard library can be found at docs.julialang.org
# packages can be found at juliahub.com/ui/Packages
# see DifferentialEquations.jl
# see Plots.jl

# REPL: pwd() -> present working directory
# REPL: cd("...") -> change directory
# REPL: ] -> package manager
# REPL: activate . -> where to download packages and ID this is a project 
#                     this will create two files in the current directory:
#                         Project.tom file, where external packages are
#                         Manifest.toml file, where all dependencies for
#                             packages are stored
#                     
# REPL: add Plots -> add Plots package
# REPL: status -> check status of packages