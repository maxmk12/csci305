package main

import (
	"fmt"
	"regexp"
	"io/ioutil"
	"os"
		
)

func read() string{
	b, err := ioutil.ReadFile(os.Args[1])
	checkErr(err)
	return string(b)
}
	
func checkErr(err error){
	if err != nil{ 
        	panic(err)
	}
}

func write(s string){
	fmt.Print("Enter name of file: ")
	var first string
	fmt.Scanln(&first)
	NFile, err := os.Create(first + ".txt")
	checkErr(err)
	fmt.Fprintf(NFile, s)
}

func parse(b string) string{
	reg, err := regexp.Compile("[^a-zA-Z \n]+")
	checkErr(err)	
	example := b
	
	processedString := reg.ReplaceAllString(example, "")
	return processedString
}

func main(){
	var f string = read()
	var proF string = parse(f)
	write(proF)
	os.Exit(1)
}

