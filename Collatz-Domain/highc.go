package main

import (
"fmt"
)
var (
	IsSame bool
	num int64
	steps int64
	collatzNum int64
	newIndex int
	j int
	i int
	stepArray[10]int64
	magnitudeArray[10]int64
	minNum int
	maxNum int64
	newmaxNum int64
	minSteps int64
	domStart int64
	domEnd int64
)
func loopCollatz(collatzNum int64) int64{
	steps = 0
	maxNum = 0
	for (collatzNum != 1){
			if(collatzNum%2 == 1){
				collatzNum = (collatzNum*3)+1
				if(collatzNum > maxNum){
					maxNum = collatzNum
				}

			} else {

				collatzNum = (collatzNum/2)
				if(collatzNum > maxNum){
                                        maxNum = collatzNum
                                }
			}
		
			steps = steps + 1
		}

	return maxNum
}

func main(){

	/*stepArray = [10]int64{0,0,0,0,0,0,0,0,0,0}*/
	/*magnitudeArray = [10]int64{0,0,0,0,0,0,0,0,0,0}*/
	fmt.Println("Enter Domain Start: ")
	fmt.Scanln(&num)

	fmt.Println("Enter Domain End: ")
        fmt.Scanln(&domEnd)

	num = 19970912
	domEnd = 20201203
	newmaxNum=0

	for (num <= domEnd){

		collatzNum=num
		steps = loopCollatz(collatzNum)
		newIndex = 0
		
		if(steps > newmaxNum){
                    newmaxNum = steps
                }


		fmt.Println("{",num,"} = ",steps)

		num = num + 1
	}

		fmt.Println("Max Num = ", newmaxNum)
}

