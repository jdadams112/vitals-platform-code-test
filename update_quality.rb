require 'award'

def quality_change(award)
    case award.name
    when 'Blue First'
        if(award.expires_in <= 0)
          award.quality += 2
        else
          award.quality += 1
        end
    when 'Blue Compare'
        if (award.expires_in <= 0)
          award.quality = 0
        elsif(award.expires_in <= 10)
            award.quality += 2
            if(award.expires_in <= 5)
              award.quality += 1
            end
        else 
            award.quality += 1
        end
    when 'Blue Star'
        if(award.expires_in > 0)
            award.quality -= 2
        else 
            award.quality -= 4
        end
    else
        if(award.expires_in > 0)
            award.quality -= 1
        else 
            award.quality -= 2
        end
    end
end

def update_quality(awards)
  awards.each do |award| 
    quality_change(award)

    if (award.name != 'Blue Distinction Plus')
        award.expires_in -= 1
    end

  end
end


