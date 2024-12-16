# Clear existing data
PartType.destroy_all
CarPart.destroy_all

# Seed PartType data
type_data = [
  { name: "Engine", description: "The engine converts fuel into mechanical energy to power the vehicle." },
  { name: "Transmission", description: "The transmission system transfers power from the engine to the wheels." },
  { name: "Alternator", description: "The alternator generates electrical power to charge the battery and run electrical systems." },
  { name: "Brake Pads", description: "Brake pads provide friction to slow down and stop the vehicle." },
  { name: "Radiator", description: "The radiator helps to cool the engine by dissipating heat." },
  { name: "Fuel Injector", description: "The fuel injector delivers fuel into the engine’s combustion chamber." },
  { name: "Catalytic Converter", description: "The catalytic converter reduces harmful emissions from the exhaust." },
  { name: "Suspension Struts", description: "Suspension struts support the vehicle’s weight and absorb shocks from the road." },
  { name: "Battery", description: "The battery provides the initial power to start the vehicle and powers electrical components." },
  { name: "Exhaust Muffler", description: "The muffler reduces noise and emissions from the exhaust system." }
]

part_types = []
type_data.each do |data|
  part_types << PartType.create!(data)
end

# Seed CarPart data
car_parts_data = [
  { name: "V8 Engine", description: "High-performance V8 engine for sports cars.", price: 2500.00, part_type_name: "Engine", active: true },
  { name: "Automatic Transmission", description: "Smooth automatic transmission for sedans.", price: 1500.00, part_type_name: "Transmission", active: true },
  { name: "Heavy Duty Alternator", description: "Durable alternator for trucks and SUVs.", price: 300.00, part_type_name: "Alternator", active: true },
  { name: "Ceramic Brake Pads", description: "High-quality brake pads for enhanced stopping power.", price: 100.00, part_type_name: "Brake Pads", active: true },
  { name: "Aluminum Radiator", description: "Lightweight radiator for efficient cooling.", price: 400.00, part_type_name: "Radiator", active: true },
  { name: "Performance Fuel Injector", description: "High-flow fuel injector for improved engine performance.", price: 200.00, part_type_name: "Fuel Injector", active: true },
  { name: "Universal Catalytic Converter", description: "Eco-friendly catalytic converter suitable for most vehicles.", price: 500.00, part_type_name: "Catalytic Converter", active: true },
  { name: "Adjustable Suspension Struts", description: "Customizable suspension struts for improved ride quality.", price: 800.00, part_type_name: "Suspension Struts", active: true },
  { name: "Lithium-ion Battery", description: "Long-lasting lithium-ion car battery.", price: 350.00, part_type_name: "Battery", active: true },
  { name: "Sport Exhaust Muffler", description: "Low-restriction muffler for sporty sound.", price: 250.00, part_type_name: "Exhaust Muffler", active: true }
]

car_parts_data.each do |data|
  puts "--------------#{data[:part_type_name]}------------------"
  part_type = PartType.find_by(name: data[:part_type_name])
  CarPart.create!(
    name: data[:name],
    description: data[:description],
    price: data[:price],
    part_type: part_type,
    active: data[:active]
  )
end
