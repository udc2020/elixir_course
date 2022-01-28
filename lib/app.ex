# Application.put_env(:elixir,:ansi_enabled,true)

defmodule App do
  def main do

    inputs/ outputs
    IO.puts "hello"
    age = IO.gets("What is Your age : ")

    #Data types
    #String , Integer ,Float ,Boolean ,Atoms

    #Concatinate Str
    foo = "foo"
    bar = "bar"
    IO.puts foo <> bar

    #interpolation
    var = "programming languiage"
    IO.puts "Elixir is #{var}"


    #Control flow
    #unless/ -if age < "18" do
      IO.puts "You Are Teenager"
    else
      IO.puts "You are Adult"
    end

    cond do
      age <= "18" -> IO.puts "You Are Teenager"
      age > "22" -> IO.puts "You Are adult"
      age <= "10" -> IO.puts "You Are child"
    end


    IO.puts "Your state is #{if age <= "18",do: 'Teenager',else: 'adult'  }"



    #Lists
    my_list = ["Erlang","Ruby","Pascal"]
    my_list2 = ["JAVA","PHP","Python"]
    my_list3 = my_list ++ my_list2

    #IO.puts "JAVA" in my_list3

    #Enums
    Enum.each( 0..10 ,fn i ->IO.puts "count : #{i}"end)
    Enum.each(5..10,fn i -> IO.puts i end)

    Enum.each my_list ,fn item ->
      IO.puts item
    end


    #Tuples
    my_tuple = {1,2,3,4,5,6}
    IO.puts elem(my_tuple,2)
    IO.puts tuple_size(my_tuple)
    IO.puts Tuple.sum(my_tuple)
    state =  Tuple.append(my_tuple,7)

    IO.inspect my_tuple


    IO.puts say_Hello("siade")
    anon_fun  = fn (x,y)  -> x + y end
    IO.puts anon_fun.(10,12)
  end

  def say_Hello (name) do
     "hello #{name}"
  end

end
