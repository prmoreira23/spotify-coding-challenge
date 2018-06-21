def changePossibilities(amount, denominations)
  possibilities = []

  for i in 0..amount
    possibilities[i] = 0
  end

  possibilities[0] = 1

  for j in 0...denominations.size
    coin = denominations[j]

    for m in coin..amount
      remainder = m - coin
      possibilities[m] += possibilities[remainder]
    end
  end

  return possibilities[amount]
end
