PartType.destroy_all

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
