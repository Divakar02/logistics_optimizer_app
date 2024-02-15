import 'package:flutter/material.dart';

class CategoryModel {
  String? category;

  String? content;

  String? image;

  CategoryModel(this.category, this.content, this.image);
}

class SubCategoryModel {
  String item;

  String description;

  SubCategoryModel(this.item,this.description);
}



List<SubCategoryModel> Electronic_Components = [
SubCategoryModel("Insulation Wires", "Used for insulation purposes to resist shock"),
SubCategoryModel("Resistors", "Electronic components that resist the flow of electrical current"),
SubCategoryModel("Capacitors", "Store and release electrical energy"),
SubCategoryModel("Diodes", "Allow current to flow in one direction only"),
SubCategoryModel("Transistors", "Used for amplification or switching of electronic signals"),
SubCategoryModel("Integrated Circuits (ICs)", "Contain multiple electronic components on a single chip"),
SubCategoryModel("Printed Circuit Boards (PCBs)", "Provide mechanical support and electrical connections for electronic components"),
SubCategoryModel("Connectors", "Join electronic circuits together"),
SubCategoryModel("Switches", "Control the flow of electricity in a circuit"),
SubCategoryModel("Inductors", "Store energy in a magnetic field"),
SubCategoryModel("Relays", "Electromechanical switches operated by an electrical current"),
SubCategoryModel("LEDs (Light Emitting Diodes)", "Produce light when an electrical current passes through them"),
SubCategoryModel("LCDs (Liquid Crystal Displays)", "Display information in electronic devices"),
SubCategoryModel("Potentiometers", "Adjust electrical resistance"),
SubCategoryModel("Transformers", "Transfer electrical energy between circuits"),
SubCategoryModel("Sensors", "Detect changes in physical properties and convert them into signals"),
SubCategoryModel("Microcontrollers", "Small computers on a single integrated circuit"),
SubCategoryModel("Oscillators", "Generate periodic signals"),
SubCategoryModel("Filters", "Remove unwanted components from signals"),
SubCategoryModel("Amplifiers", "Increase the amplitude of electronic signals"),
SubCategoryModel("Power Supplies", "Provide electrical power to electronic devices"),
SubCategoryModel("Semiconductors", "Materials with conductivity between conductors and insulators"),
SubCategoryModel("Thermistors", "Change resistance with temperature"),
SubCategoryModel("Varistors", "Protect electronic circuits against excessive voltage"),
SubCategoryModel("Fuses", "Protect against overcurrent by melting and breaking the circuit"),
SubCategoryModel("Voltage Regulators", "Maintain a constant voltage level"),
SubCategoryModel("Crystal Oscillators", "Generate precise frequencies"),
SubCategoryModel("Heat Sinks", "Dissipate heat from electronic components"),
SubCategoryModel("Fuse Holders", "Holds fuses securely in place"),
SubCategoryModel("Terminal Blocks", "Connect wires to electrical circuits"),
SubCategoryModel("Waveguides", "Transmit microwave signals"),
SubCategoryModel("Antennas", "Convert electrical signals into electromagnetic waves and vice versa"),
SubCategoryModel("Batteries", "Store and supply electrical energy"),
SubCategoryModel("Battery Chargers", "Recharge batteries"),
SubCategoryModel("Soldering Irons", "Used to solder electronic components"),
SubCategoryModel("Cable Ties", "Secure and organize cables"),
SubCategoryModel("EMI/RFI Filters", "Suppress electromagnetic interference and radio-frequency interference"),
SubCategoryModel("Terminal Lugs", "Connect wires to terminals"),
SubCategoryModel("Wire Ducts", "Protect and route wires"),
SubCategoryModel("Circuit Breakers", "Automatically interrupt current flow during overcurrent or short circuit"),
SubCategoryModel("Voltage Dividers", "Divide voltage between two resistors"),
SubCategoryModel("Coils", "Conductors wound into a spiral or helix"),
SubCategoryModel("Thermal Management Products", "Manage heat in electronic devices"),
SubCategoryModel("Magnetics", "Components made from magnetic materials"),
SubCategoryModel("EMC/EMI Absorbers", "Absorb electromagnetic interference"),
SubCategoryModel("Rectifiers", "Convert alternating current to direct current"),
SubCategoryModel("Piezoelectric Devices", "Convert mechanical energy into electrical energy"),
SubCategoryModel("Optocouplers", "Transfer electrical signals between isolated circuits"),
SubCategoryModel("Motor Drivers", "Control the speed and direction of motors"),
SubCategoryModel("Buzzers", "Produce sound signals"),
SubCategoryModel("Touch Screens", "Input devices that detect touch"),
SubCategoryModel("Pressure Sensors", "Measure pressure of gases or liquids"),
SubCategoryModel("Load Cells", "Measure force or weight"),
SubCategoryModel("Linear Actuators", "Convert electrical energy into linear motion"),
SubCategoryModel("Optical Sensors", "Detect light and convert it into electrical signals"),
SubCategoryModel("Joysticks", "Input devices for controlling movement"),
SubCategoryModel("RF Modules", "Transmit and receive radio frequency signals"),
SubCategoryModel("Encoders", "Convert motion into electrical signals"),
SubCategoryModel("Gyroscopes", "Measure angular velocity"),
SubCategoryModel("Accelerometers", "Measure acceleration"),
SubCategoryModel("Thermocouples", "Measure temperature using two different metals"),
SubCategoryModel("Proximity Sensors", "Detect nearby objects without physical contact"),
SubCategoryModel("Load Switches", "Control power distribution in electronic circuits"),
SubCategoryModel("Isolators", "Isolate two circuits electrically"),
SubCategoryModel("Flow Sensors", "Measure the flow rate of liquids or gases"),
SubCategoryModel("Hall Effect Sensors", "Detect the presence of magnetic fields"),
SubCategoryModel("Tilt Sensors", "Detect changes in orientation"),
SubCategoryModel("Gas Sensors", "Detect the presence of gases in the air"),
SubCategoryModel("Humidity Sensors", "Measure the relative humidity of the air"),
SubCategoryModel("Temperature Sensors", "Measure temperature"),
SubCategoryModel("Level Sensors", "Detect the level of liquids or solids"),
SubCategoryModel("Sound Sensors", "Detect sound levels"),
SubCategoryModel("Color Sensors", "Detect colors of objects"),
SubCategoryModel("Distance Sensors", "Measure distance to objects"),
SubCategoryModel("Motion Sensors", "Detect movement"),
SubCategoryModel("Vibration Sensors", "Detect vibrations"),
SubCategoryModel("IR Sensors", "Detect infrared radiation"),
SubCategoryModel("UV Sensors", "Detect ultraviolet radiation"),
SubCategoryModel("RFID Readers", "Read radio frequency identification tags"),
SubCategoryModel("RFID Tags", "Store data and transmit it to RFID readers"),
SubCategoryModel("GSM Modules", "Transmit and receive data using GSM networks"),
SubCategoryModel("GPS Modules", "Receive signals from GPS satellites to determine location"),
SubCategoryModel("Bluetooth Modules", "Transmit and receive data using Bluetooth technology"),
SubCategoryModel("Wi-Fi Modules", "Transmit and receive data using Wi-Fi technology"),
SubCategoryModel("Zigbee Modules", "Transmit and receive data using Zigbee technology"),
SubCategoryModel("LoRa Modules", "Transmit and receive data using LoRa technology"),
SubCategoryModel("NFC Modules", "Transmit and receive data using NFC technology"),
SubCategoryModel("Ethernet Modules", "Transmit and receive data using Ethernet technology"),
SubCategoryModel("CAN Bus Modules", "Transmit and receive data using CAN bus technology"),
SubCategoryModel("SPI Modules", "Communicate using SPI (Serial Peripheral Interface) protocol"),
SubCategoryModel("I2C Modules", "Communicate using I2C (Inter-Integrated Circuit) protocol"),
SubCategoryModel("UART Modules", "Communicate using UART (Universal Asynchronous Receiver-Transmitter) protocol"),
SubCategoryModel("USB Modules", "Communicate using USB (Universal Serial Bus) protocol"),
SubCategoryModel("Power Amplifiers", "Amplify power signals"),
SubCategoryModel("RF Amplifiers", "Amplify radio frequency signals"),
SubCategoryModel("Audio Amplifiers", "Amplify audio signals"),
SubCategoryModel("Video Amplifiers", "Amplify video signals"),
SubCategoryModel("Current Sensors", "Measure electric current"),
SubCategoryModel("Light Sensors", "Measure light intensity"),
SubCategoryModel("Magnetic Sensors", "Detect magnetic fields"),
SubCategoryModel("Temperature Controllers", "Maintain a set temperature level"),
SubCategoryModel("PID Controllers", "Maintain control based on proportional, integral, and derivative actions"),
SubCategoryModel("Electronic Switches", "Control electronic circuits"),
SubCategoryModel("RF Switches", "Control radio frequency signals"),
SubCategoryModel("Audio Switches", "Control audio signals"),
SubCategoryModel("Video Switches", "Control video signals"),
SubCategoryModel("Optical Switches", "Control optical signals"),
SubCategoryModel("Relay Modules", "Control electrical circuits using relays"),
SubCategoryModel("Motor Controllers", "Control the speed and direction of motors"),
SubCategoryModel("Servo Controllers", "Control the position of servo motors"),
SubCategoryModel("Stepper Motor Controllers", "Control the movement of stepper motors"),
SubCategoryModel("Brushless Motor Controllers", "Control the speed and direction of brushless motors"),
SubCategoryModel("DC Motor Controllers", "Control the speed and direction of DC motors"),
SubCategoryModel("AC Motor Controllers", "Control the speed and direction of AC motors"),
SubCategoryModel("Peltier Modules", "Cool or heat surfaces using the Peltier effect"),
SubCategoryModel("EMI Filters", "Suppress electromagnetic interference"),
SubCategoryModel("RF Filters", "Filter radio frequency signals"),
SubCategoryModel("Audio Filters", "Filter audio signals"),
SubCategoryModel("Video Filters", "Filter video signals"),
SubCategoryModel("Optical Filters", "Filter optical signals"),
SubCategoryModel("Noise Filters", "Filter noise from electronic signals"),
SubCategoryModel("Power Factor Controllers", "Control power factor to improve energy efficiency"),
SubCategoryModel("Power Factor Correction Capacitors", "Correct power factor in electrical systems"),
SubCategoryModel("Power Factor Correction Modules", "Correct power factor in electrical systems"),
SubCategoryModel("Voltage Multipliers", "Multiply input voltage to a higher level"),
SubCategoryModel("Voltage Dividers", "Divide voltage between two resistors"),
SubCategoryModel("Voltage References", "Provide stable voltage outputs"),
SubCategoryModel("Voltage Sensors", "Measure voltage levels"),
SubCategoryModel("Current Transformers", "Transform current into a proportional voltage"),
SubCategoryModel("Current Limiters", "Limit the amount of current in a circuit"),
SubCategoryModel("Current Transducers", "Convert current into a proportional voltage"),
SubCategoryModel("Current Shunts", "Measure current by voltage drop"),
SubCategoryModel("EMI/RFI Shielding", "Shield electronic circuits from electromagnetic interference"),
SubCategoryModel("Circuit Protection", "Protect electronic circuits from overvoltage, overcurrent, etc."),
SubCategoryModel("EMI/RFI Suppression", "Suppress electromagnetic interference"),
SubCategoryModel("Electronic Enclosures", "Protect electronic components from environmental conditions"),
SubCategoryModel("Electronic Fans", "Cool electronic components"),
SubCategoryModel("Electronic Heaters", "Heat electronic components"),
SubCategoryModel("Electronic Filters", "Filter electronic signals"),
SubCategoryModel("Electronic Relays", "Control electrical circuits using relays"),
SubCategoryModel("Electronic Timers", "Measure time intervals"),
SubCategoryModel("Electronic Counters", "Count events"),
SubCategoryModel("Electronic Meters", "Measure quantities such as voltage, current, etc."),
SubCategoryModel("Electronic Detectors", "Detect electronic signals"),
SubCategoryModel("Electronic Encoders", "Convert motion into electronic signals"),
SubCategoryModel("Electronic Decoders", "Convert electronic signals into other forms"),
SubCategoryModel("Electronic Multiplexers", "Combine multiple signals into one"),
SubCategoryModel("Electronic Demultiplexers", "Split one signal into multiple signals"),
SubCategoryModel("Electronic Converters", "Convert between different types of electronic signals"),
SubCategoryModel("Electronic Modulators", "Modulate electronic signals"),
SubCategoryModel("Electronic Demodulators", "Demodulate electronic signals"),
SubCategoryModel("Electronic Buffers", "Isolate one circuit from another"),
SubCategoryModel("Electronic Latches", "Latch electronic signals"),
SubCategoryModel("Electronic Flip-Flops", "Flip electronic signals"),
SubCategoryModel("Electronic Gates", "Perform logical operations on electronic signals"),
SubCategoryModel("Electronic Shift Registers", "Shift electronic signals in time"),
SubCategoryModel("Electronic Memory", "Store electronic signals for later retrieval"),
SubCategoryModel("Electronic Registers", "Hold electronic signals temporarily"),
SubCategoryModel("Electronic Comparators", "Compare electronic signals"),
SubCategoryModel("Electronic Clocks", "Generate timing signals"),
SubCategoryModel("Electronic Oscillators", "Generate periodic electronic signals"),
SubCategoryModel("Electronic Timers", "Measure time intervals"),
SubCategoryModel("Electronic Counters", "Count events"),
SubCategoryModel("Electronic Logic Analyzers", "Analyze logical operations on electronic signals"),
SubCategoryModel("Electronic Pattern Generators", "Generate patterns of electronic signals"),
SubCategoryModel("Electronic Spectrum Analyzers", "Analyze frequency content of electronic signals"),
SubCategoryModel("Electronic Signal Generators", "Generate arbitrary electronic signals"),
SubCategoryModel("Electronic Power Analyzers", "Analyze power consumption of electronic devices"),
SubCategoryModel("Electronic Network Analyzers", "Analyze electrical networks"),
SubCategoryModel("Electronic Signal Analyzers", "Analyze electronic signals"),
SubCategoryModel("Electronic Vector Network Analyzers", "Analyze electrical networks"),
SubCategoryModel("Electronic Phase Noise Analyzers", "Analyze phase noise in electronic signals"),
SubCategoryModel("Electronic Audio Analyzers", "Analyze audio signals"),
SubCategoryModel("Electronic Video Analyzers", "Analyze video signals"),
SubCategoryModel("Electronic Light Analyzers", "Analyze light signals"),
SubCategoryModel("Electronic Temperature Analyzers", "Analyze temperature signals"),
SubCategoryModel("Electronic Pressure Analyzers", "Analyze pressure signals"),
SubCategoryModel("Electronic Humidity Analyzers", "Analyze humidity signals"),
SubCategoryModel("Electronic Flow Analyzers", "Analyze flow signals"),
SubCategoryModel("Electronic Motion Analyzers", "Analyze motion signals"),
SubCategoryModel("Electronic Vibration Analyzers", "Analyze vibration signals")];



List<SubCategoryModel> Consumer_Electronics = [
  SubCategoryModel("Smartphones", "Mobile devices with advanced computing capabilities"),
  SubCategoryModel("Laptops", "Portable computers for personal or professional use"),
  SubCategoryModel("Tablets", "Handheld computers with touchscreen interfaces"),
  SubCategoryModel("Televisions", "Electronic devices for viewing broadcasted or streamed content"),
  SubCategoryModel("Cameras", "Devices used for capturing images and videos")
];

List<SubCategoryModel> Apparel_and_Fashion = [
  SubCategoryModel("Clothing", "Includes various types of garments like T-shirts, jeans, dresses"),
  SubCategoryModel("Footwear", "Shoes, sneakers, sandals, etc."),
  SubCategoryModel("Accessories", "Hats, bags, belts, etc.")
];

List<SubCategoryModel> Home_and_Garden = [
  SubCategoryModel("Furniture", "Tables, chairs, sofas, etc."),
  SubCategoryModel("Home_Decor", "Rugs, curtains, wall art, etc."),
  SubCategoryModel("Kitchenware", "Pots, pans, utensils, etc."),
  SubCategoryModel("Garden_Tools", "Shovels, rakes, hoses, etc.")
];

List<SubCategoryModel> Automotive_Parts = [
  SubCategoryModel("Engine_Components", "Parts that make up the engine"),
  SubCategoryModel("Braking_Systems", "Components related to braking"),
  SubCategoryModel("Suspension_Parts", "Components related to vehicle suspension"),
  SubCategoryModel("Electrical_Components", "Components related to vehicle electronics")
];

List<SubCategoryModel> Health_and_Beauty = [
  SubCategoryModel("Skincare_Products", "Products for maintaining healthy skin"),
  SubCategoryModel("Makeup", "Cosmetics for enhancing appearance"),
  SubCategoryModel("Haircare_Products", "Products for hair maintenance and styling"),
  SubCategoryModel("Vitamins_and_Supplements", "Nutritional supplements for health benefits")
];

List<SubCategoryModel> Food_and_Beverage = [
  SubCategoryModel("Packaged_Foods", "Processed food items available in packages"),
  SubCategoryModel("Beverages", "Liquid refreshments like soft drinks, juices, etc."),
  SubCategoryModel("Fresh_Produce", "Fruits and vegetables"),
  SubCategoryModel("Dairy_Products", "Milk, cheese, yogurt, etc.")
];

List<SubCategoryModel> Pharmaceuticals_and_Medical_Supplies = [
  SubCategoryModel("Prescription_Drugs", "Medications requiring a prescription"),
  SubCategoryModel("Over-the-counter_Medications", "Medications available without a prescription"),
  SubCategoryModel("Medical_Equipment", "Tools and devices used in medical treatment"),
  SubCategoryModel("Surgical_Instruments", "Tools used in surgical procedures")
];

List<SubCategoryModel> Toys_and_Games = [
  SubCategoryModel("Action_Figures", "Miniature figures depicting characters"),
  SubCategoryModel("Board_Games", "Games played on a board"),
  SubCategoryModel("Puzzles", "Games designed to test problem-solving skills"),
  SubCategoryModel("Remote-controlled_Toys", "Toys controlled remotely")
];

List<SubCategoryModel> Industrial_and_Manufacturing_Equipment = [
  SubCategoryModel("Machinery_Parts", "Components of industrial machinery"),
  SubCategoryModel("Tools", "Instruments used for manufacturing processes"),
  SubCategoryModel("Raw_Materials", "Basic materials used in production processes"),
  SubCategoryModel("Safety_Equipment", "Gear designed to protect workers")
];

List<SubCategoryModel> Books_and_Media = [
  SubCategoryModel("Books", "Written or printed works"),
  SubCategoryModel("DVDs/Blu-rays", "Digital media for entertainment"),
  SubCategoryModel("CDs", "Compact discs for audio storage"),
  SubCategoryModel("Video_Games", "Interactive electronic games")
];

List<SubCategoryModel> Sporting_Goods = [
  SubCategoryModel("Gym_Equipment", "Exercise machines and accessories"),
  SubCategoryModel("Athletic_Apparel", "Clothing designed for sports activities"),
  SubCategoryModel("Sports_Accessories", "Equipment used in various sports"),
  SubCategoryModel("Outdoor_Gear", "Items for outdoor recreational activities")
];

List<SubCategoryModel> Construction_Materials = [
  SubCategoryModel("Lumber", "Wood used in construction"),
  SubCategoryModel("Cement", "Binding material used in construction"),
  SubCategoryModel("Steel_Beams", "Structural components made of steel"),
  SubCategoryModel("Plumbing_Fixtures", "Items used in plumbing systems")
];

List<SubCategoryModel> Pet_Supplies = [
  SubCategoryModel("Pet_Food", "Food for domesticated animals"),
  SubCategoryModel("Toys", "Items for pets to play with"),
  SubCategoryModel("Beds", "Sleeping arrangements for pets"),
  SubCategoryModel("Grooming_Products", "Items used to maintain the appearance of pets")
];

List<SubCategoryModel> Office_Supplies = [
  SubCategoryModel("Paper_Products", "Various types of paper for office use"),
  SubCategoryModel("Writing_Instruments", "Tools used for writing"),
  SubCategoryModel("Desk_Organizers", "Items for organizing workspace"),
  SubCategoryModel("Printer_Cartridges", "Ink or toner cartridges for printers")
];

List<SubCategoryModel> Jewelry_and_Watches = [
  SubCategoryModel("Rings", "Circular bands worn as adornment"),
  SubCategoryModel("Necklaces", "Decorative chains worn around the neck"),
  SubCategoryModel("Bracelets", "Ornaments worn around the wrist"),
  SubCategoryModel("Watches", "Timekeeping devices worn on the wrist")
];

List<SubCategoryModel> Electronic_Appliances = [
  SubCategoryModel("Refrigerators", "Devices used for cooling and preserving food"),
  SubCategoryModel("Washing_Machines", "Appliances for cleaning clothes"),
  SubCategoryModel("Dishwashers", "Machines for cleaning dishes and utensils"),
  SubCategoryModel("Microwaves", "Appliances for cooking and heating food quickly")
];

List<SubCategoryModel> Art_and_Collectibles = [
  SubCategoryModel("Paintings", "Visual artworks created with paint"),
  SubCategoryModel("Sculptures", "Three-dimensional artistic creations"),
  SubCategoryModel("Antiques", "Objects of historical significance"),
  SubCategoryModel("Rare_Collectibles", "Items valued for their rarity or uniqueness")
];

List<SubCategoryModel> Chemicals_and_Hazardous_Materials = [
  SubCategoryModel("Cleaning_Agents", "Chemicals used for cleaning purposes"),
  SubCategoryModel("Industrial_Solvents", "Substances used for dissolving other materials"),
  SubCategoryModel("Petroleum_Products", "Derived from crude oil and used for various purposes"),
  SubCategoryModel("Radioactive_Materials", "Substances that emit radiation")
];

List<SubCategoryModel> Textiles_and_Fabrics = [
  SubCategoryModel("Cotton_Fabric", "Fabric made from cotton fibers"),
  SubCategoryModel("Silk_Fabric", "Luxurious fabric produced by silkworms"),
  SubCategoryModel("Polyester_Fabric", "Synthetic fabric made from polyester fibers"),
  SubCategoryModel("Wool_Fabric", "Fabric made from the fleece of sheep or goats"),
  SubCategoryModel("Wool_Fabric", "Fabric made from the fleece of sheep or goats"),
  SubCategoryModel("Wool_Fabric", "Fabric made from the fleece of sheep or goats"),
];

