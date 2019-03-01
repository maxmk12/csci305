package main

import (
	"fmt"
	"regexp"
	"io/ioutil"
	"os"
	"bufio"
	
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
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter name of file with: ")
	text, _ := reader.ReadString('\n')
	fmt.Println(text)
	NFile, err := os.Create("test.txt")
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

