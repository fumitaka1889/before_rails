def repeat_string(str)
  length = str.length
  if length <= 4
     puts str * 3
  else
     shorten = str.slice(0..3)
     puts shorten * 3
  end
end
alphabet('abCD')
alphabet('EEEE')
alphabet('ffff')
