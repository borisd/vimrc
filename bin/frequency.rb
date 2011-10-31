#!/usr/bin/env ruby

Show = 20

dict = Hash.new(0)
STDIN.each { |x| dict[x.chop] += 1 }
dict.sort_by{ |key, value| -value }[0..Show].each{ |item| printf "%4d : %s\n", item[1],  item[0] }


