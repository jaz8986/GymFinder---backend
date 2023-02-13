Gym.destroy_all
Membership.destroy_all
Tier.destroy_all
AttachedMember.destroy_all

#Gym
Gym.create(
    name: "Zoo Culture",
    address: "16571 Ventura Blvd, Encino, CA 91436"
)

Gym.create(
    name: "Life Time",
    address: "1435 E Roseville Pkwy, Roseville, CA 95661"
)

#Tier
Tier.create(
    gym: Gym.find_by(name: "Zoo Culture"),
    name_of_tier: "Monthly",
    description: "Monthly payment of $125. All Amenities included."
)

Tier.create(
    gym: Gym.find_by(name: "Zoo Culture"),
    name_of_tier: "Yearly",
    description: "Yearly payment of $1380. All Amenities included."
)

Tier.create(
    gym: Gym.find_by(name: "Life Time"),
    name_of_tier: "Signature",
    description: "Monthly payment of $219. Unlimited Club Access and amenities."
)

Tier.create(
    gym: Gym.find_by(name: "Life Time"),
    name_of_tier: "Standard",
    description: "Monthly payment of $179. Unlimited Club Access. Limited Amenities such as group training."
)

#AttachedMember

40.times do 
    AttachedMember.create(
        name: Faker::Name.name,
        phone: 333-333-3333,
    )
end

#Membership
20.times do
    Membership.create(
        gym: Gym.find_by(name: "Zoo Culture"),
        tier: Tier.find_by(name_of_tier: "Monthly"),
        name: Faker::Name.name,
        email: Faker::Internet.email,
        phone: 333-333-3333,
        attached_member: AttachedMember.all.sample
    )
end

20.times do
    Membership.create(
        gym: Gym.find_by(name: "Life Time"),
        tier: Tier.find_by(name_of_tier: "Monthly"),
        name: Faker::Name.name,
        email: Faker::Internet.email,
        phone: 333-333-3333,
        attached_member: AttachedMember.all.sample
    )
end