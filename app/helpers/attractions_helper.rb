module AttractionsHelper
  def trackcompare(length)
    length_difference = 4424 - length
    if length_difference < 0
      length_difference = length_difference * -1
      length_difference = length_difference.to_s + " feet more than Expedition Everest"
    elsif length_difference == 0
      length_difference = "Equal in track length to Expedition Everest"
    else
      length_difference = length_difference.to_s + " feet less than Expedition Everest"
    end

    length_difference
  end

  def timecompare(time)
    time_difference = 170 - time
    if time_difference < 0
      time_difference = time_difference * -1
      time_difference = time_difference.to_s + " seconds more than Expedition Everest"
    elsif time_difference == 0
      time_difference = "Equal in ride time to Expedition Everest"
    else
      time_difference = time_difference.to_s + " seconds less than Expedition Everest"
    end

    time_difference
  end

  def yearcompare(year)
    year_difference = 2006 - year
    if year_difference < 0
      year_difference = year_difference * -1
      year_difference = "Built " + year_difference.to_s + " years after than Expedition Everest"
    elsif year_difference == 0
      year_difference = "Built in the same year as Expedition Everest"
    else
      year_difference = "Built " + year_difference.to_s + " years before Expedition Everest"
    end

    year_difference.to_s
  end

  def themeparkname(id)
    parkname = ""
    @themeparks.each do |park|
      if park.id == id
        parkname = park.name.to_s
      end
    end

    if parkname == ""
      parkname = "No park name found"
    end

    parkname
  end

  def themeparklocation(id)
    locale = ""
    @themeparks.each do |park|
      if park.id == id
        locale = park.location.to_s
      end
    end

    if locale == ""
      locale = "No location found"
    end
    locale
  end
end
