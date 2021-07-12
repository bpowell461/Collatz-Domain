function loopCollatz(collatzNum)
	steps = 0
	maxNum = 0
	while(collatzNum != 1)
		if(collatzNum % 2 == 1)
			collatzNum = (collatzNum*3)+1
			if(collatzNum>maxNum)
               			maxNum = collatzNum
        		end

		else
			collatzNum = collatzNum/2
			if(collatzNum>maxNum)
                                maxNum = collatzNum
                        end
		end
		steps=steps+1
	end
	return maxNum
end

domEnd = 20201203

num = 19970912
maxNum = 0
while (num <= domEnd)

	collatzNum = num
	steps = loopCollatz(collatzNum)

	println("{",num,"} = ",steps)

	if(steps>maxNum)
	global maxNum = steps
	end

	global num = num + 1

end
	println("Max Num = ", maxNum)

exit(0)


