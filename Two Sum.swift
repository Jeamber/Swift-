//给定一列整数和一个特定的目标值
//在给定数列中找出两个值，使得他们的和等于目标值，并返回这两个值在数列中的位置
//假定每个整数列中一定存在这样的两个值

//思路：
//遍历数列
	//如果大于目标值，跳过
	//如果小于目标值，则再次遍历剩余的数列，查找剩余数列中是否存在目标值与当前值的差值
func twoSum(nums: [int], _ target: int) -> [int] {
	var counter: int = 0
	let numCounts = nums.count - 1
	for counter in 0...numCounts{
		if nums[counter] > target {
			continue
		}
		else{
			var firstNum = nums[counter]
			let nextBeginner = counter + 1
			var secondNum = target - firstNum
			for var nextCounter in nextBeginner...numCounts{
				if nums[nextCounter] = secondNum{
					return nextCounter
					break
				}
			}
		}
	}
}
//先跑通，再看解法