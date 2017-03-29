module PagesHelper
  def linear_background_for(sport)
    case sport.name
    when "Cyclisme" then "rgba(239,62,54,0.6)"
    when "Course à pied" then "rgba(253,231,76,0.8)"
    when "Natation" then "rgba(0,107,166,0.6)"
    else
      "rgba(230,230,230,1)"
    end
  end

  def multi_linear_background_for(sports)
    gradients = ""
    level = 00

    sports.each do |sport|
      gradients += "#{linear_background_for(sport)} #{level}%, "
      level += (100 / sports.count)
    end

    "linear-gradient(-225deg, #{gradients} rgba(255,255,255,0.5) 100%)"
  end

  def picture_path_for(sport)
    case sport.name
    when "Cyclisme" then "bike.jpg"
    when "Course à pied" then "run.jpg"
    when "Natation" then "swim.jpg"
    else
      "draft-logo.png"
    end
  end

  def placeholder_for(sport)
    case sport.name
    when "Cyclisme" then "JE PÉDALE"
    when "Course à pied" then "JE COURS"
    when "Natation" then "JE NAGE"
    else
      "Je fais rien"
    end
  end
end


  # def icon_for(sport)
  #   case sport.name
  #   when "Cyclisme" then "sport_icons/cycling.png"
  #   when "Course à pied" then "running.png"
  #   when "Natation" then "swimming.png"
  #   else
  #     "draft-logo.png"
  #   end

  # end
# end
