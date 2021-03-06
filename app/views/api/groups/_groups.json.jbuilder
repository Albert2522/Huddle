json.extract! group, :id, :name, :description
json.moderator do
  json.id group.moderator.id
  json.name group.moderator.name
  json.image asset_path(group.moderator.image.url)
end

json.image asset_path(group.image)
json.location group.location
json.founded_on group.founded_on.strftime('%b %d %Y')
json.members group.members, :id, :name

member_ids = group.members.map { |e| e.id  }

if current_user
  json.is_user_a_member member_ids.include? current_user.id
end

if group.huddles.empty?
  json.huddles({})
else
  json.huddles do
    group.huddles.each do |huddle|
      json.set! huddle.id do
        json.id huddle.id
        json.title huddle.title
        json.description huddle.description
        json.date huddle.date
        json.day huddle.date.strftime('%a, %b %e')
        json.time huddle.date.strftime('%I:%M %p')
        json.location huddle.location
        json.founded_on huddle.founded_on
        json.moderator do
          json.id huddle.moderator.id
          json.name huddle.moderator.name
          json.image asset_path(huddle.moderator.image.url)
        end
      end
    end
  end
  json.huddles_count group.huddles.size
end
