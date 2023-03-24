puts "🌱 Seeding spices..."

# PATIENTS_DATA: 
melissa = Patient.create(first_name: "Melissa", last_name: "Moyer", birthday: "03/13/1980", gender: "Female", email: "mmoyer@gmail.com", phone_number: "484-321-1202", address: "222 Coolbeans St. Brooklyn, NY 11205", allergies: "No known drug allergies")

jessica = Patient.create(first_name: "Jessica", last_name: "Stengred", birthday: "09/07/1975", gender: "Female", email: "jstengred@gmail.com", phone_number: "221-432-1232", address: "333 Stein St. Brooklyn, NY 11249", allergies: "Rash with amoxicillin")

skyler = Patient.create(first_name: "Skyler", last_name: "Gibbers", birthday: "12/25/1996", gender: "Female", email: "gimmegibs@gmail.com", phone_number: "818-921-1582", address: "444 Franklins St. Littleton, CO 80125", allergies: "Hypersensitivity cross-reaction with cephalexin")

divya = Patient.create(first_name: "Divya", last_name: "Veperson", birthday: "05/25/1980", gender: "Female", email: "divyan@gmail.com", phone_number: "929-949-0582", address: "321 Veppers St. Santa Monica, CA 92031", allergies: "No known drug allergies")

nancy = Patient.create(first_name: "Nancy", last_name: "Takali", birthday: "10/25/1975", gender: "Female", email: "nancy.takalin@gmail.com", phone_number: "828-323-4322", address: "2 North St. Brooklyn, NY 11249", allergies: "No known drug allergies")

matteo = Patient.create(first_name: "Matteo", last_name: "Ferara", birthday: "08/19/2000", gender: "Male", email: "matteofer@gmail.com", phone_number: "303-412-2282", address: "800 Karl St. New York, NY 10009", allergies: "No known drug allergies")

bob = Patient.create(first_name: "Bob", last_name: "Bobbers", birthday: "05/05/1945", gender: "Male", email: "bobbers@gmail.com", phone_number: "212-206-4482", address: "767 Bobbers St. Columbus, OH 91234", allergies: "No known drug allergies")

samantha = Patient.create(first_name: "Samantha", last_name: "Cera", birthday: "04/10/1999", gender: "Female", email: "samcera@gmail.com", phone_number: "917-303-1442", address: "100 Mesa St. New York, NY 10012", allergies: "No known drug allergies")

todd = Patient.create(first_name: "Todd", last_name: "Standers", birthday: "10/25/1988", gender: "Male", email: "toddstanders@gmail.com", phone_number: "212-917-2482", address: "300 Idaho St. Webster, NY 14580", allergies: "No known drug allergies")

minchul = Patient.create(first_name: "Minchul", last_name: "An", birthday: "03/13/1990", gender: "Male", email: "min@minchulan.io", phone_number: "585-733-3333", address: "8700 Pochantos St Aurora, CO 80222", allergies: "rash to amoxicillin")

staci = Patient.create(first_name: "Staci", last_name: "Oakers", birthday: "09/03/1980", gender: "Female", email: "stacioakers@gmail.com", phone_number: "585-234-6933", address: "117 Oca St Greece, NY 14720", allergies: "n/v with opiates")

elizabeth = Patient.create(first_name: "Elizabeth", last_name: "Sutters", birthday: "08/21/1989", gender: "Female", email: "esutters@gmail.com", phone_number: "917-838-4593", address: "117 Sutterland St Penfield, NY 14560", allergies: "NKDA")

jordan = Patient.create(first_name: "Jordan", last_name: "Billy", birthday: "10/21/1985", gender: "Male", email: "jordanbilly@gmail.com", phone_number: "917-266-5032", address: "117 Belfod St Chile, NY 14507", allergies: "NKDA")

joey = Patient.create(first_name: "Joey", last_name: "Fun", birthday: "10/21/1988", gender: "Male", email: "joeyfun@gmail.com", phone_number: "929-264-5032", address: "355 Fun St Staten Island, NY 14507", allergies: "NKDA")




# MEDICATIONS_DATA 
wedding_cake = Medication.create(medication_name: "Wedding Cake", thc_strength: 24, cbd_strength: 0, feelings: "Relaxed · Aroused · Hungry", negatives: "Dizzy · Anxious · Paranoid", helps_with: "Anxiety · Stress · Depression", details: "Wedding Cake, also known as Triangle Mints #23 is a potent type of indica-hybrid cannabis strain made by crossing Triangle Kush with Animal Mints. Fun fact: In Canada, this strain is known as Pink Cookies. The Wedding Cake strain provides relaxing and euphoric effects that calm the body and mind. This strain yields a rich and tangy flavor profile with undertones of earthy pepper.", aka: "Triangle Mints #23, Pink Cookies", patient_id: minchul.id, image_url: "https://leafly-public.imgix.net/strains/photos/m2y50HYRBu0dHY4JSdSx_wedding-cake_jman.jpg?auto=compress,format&w=350&dpr=1")

gorilla_glue = Medication.create(medication_name: "Gorilla Glue", thc_strength: 20, cbd_strength: 0, feelings: "Relaxed · Sleepy · Hungry", negatives: "Dry mouth · Dry eyes · Paranoid", helps_with: "Anxiety · Stress · Pain", details: "Gorilla Glue is a potent hybrid cannabis strain that delivers heavy-handed euphoria and relaxation, leaving you feeling “glued” to the couch. Gorilla Glue's chunky, resin-covered buds fill the room with pungent earthy and sour aromas inherited from its parent strains, Chems Sister, Sour Dubb, and Chocolate Diesel.", aka: "GG4, Original GLue, Gorilla Glue #4", patient_id: melissa.id, image_url: "https://images.leafly.com/flower-images/gg-4.jpg?auto=compress,format&w=215&dpr=1")

runtz = Medication.create(medication_name: "Runtz", thc_strength: 21, cbd_strength: 0, feelings: "Talkative · Happy · Giggly", negatives: "Anxious · Headache · Dizzy", helps_with: "Anxiety · Stress · Depression", details: "Runtz is a type of hybrid cannabis strain, made by Cookies Fam by crossing Zkittlez with Gelato and it is loved for its incredibly fruity flavor profile that smells just like a bag of the sugary candy we all know and love. Runtz is celebrated for its creamy smoke that is smooth and welcoming. This strain of weed produces euphoric highs and uplifting effects that are known to be long-lasting. Purple Caper Seeds released the same cross under the name Gelato Zkittlez.", aka: "Runtz OG, Gelato Zkittlez", patient_id: skyler.id, image_url: "https://images.leafly.com/flower-images/runtz-nug-image.jpg?auto=compress,format&w=215&dpr=1")

blue_dream = Medication.create(medication_name: "Blue Dream", thc_strength: 18, cbd_strength: 0, feelings: "Creative · Uplifted · Energetic", negatives: "Dry mouth · Paranoid · Dry eyes", helps_with: "Anxiety · Stress · Depression", details: "Blue Dream is a sativa-dominant hybrid cannabis strain made by crossing Blueberry with Haze. This strain produces a balanced high, along with effects such as cerebral stimulation and full-body relaxation. Blue dream is 18% THC but has a low CBD percentage, making this potent strain a fan favorite of both novice and veteran cannabis consumers. In terms of flavor, Blue Dream is reported to smell and taste like sweet berries. Medical marijuana patients often use Blue Dream to treat symptoms of depression, chronic pain, and nausea.", aka: "Double Dream, Blue Magoo", patient_id: joey.id, image_url: "https://images.leafly.com/flower-images/blue-dream.png?auto=compress,format&w=215&dpr=1")

trainwreck = Medication.create(medication_name: "Trainwreck", thc_strength: 17, cbd_strength: 0, feelings: "Talkative · Creative · Energetic", negatives: "Dizzy · Paranoid · Dry eyes", helps_with: "Anxiety · Stress · Pain", details: "Trainwreck is a mind-bending, potent sativa with effects that hit like a freight train. Mexican and Thai sativas were bred with Afghani indicas to produce this Northern California staple, passing on a sweet lemon and spicy pine aroma. Trainwreck begins its speedy hurtle through the mind with a surge of euphoria, awakening creativity and happiness. Migraines, pain, and arthritis are mowed down by Trainwreck's high-THC content, and many patients also use it for relief of anxiety, ADD/ADHD, and PTSD.", aka: "Trainwreck", patient_id: bob.id, image_url: "https://images.leafly.com/flower-images/trainwreck.png?auto=compress,format&w=350&dpr=1")

sour_diesel = Medication.create(medication_name: "Sour Diesel", thc_strength: 19, cbd_strength: 0, feelings: "Talkative · Creative · Energetic", negatives: "Dry mouth · Paranoid · Dry eyes", helps_with: "Anxiety · Stress · Depression", details: "Blue Dream is a popular sativa cannabis strain made by crossing Chemdawg and Super Skunk. Sour Diesel effects are dreamy, cerebral, fast-acting and energizing. This strain features a pungent flavor profile that smells like diesel. Medical marijuana patients choose Sour Diesel to help relieve symptoms associated with depression, pain, and stress.", aka: "Sour D, Sour Deez", patient_id: nancy.id, image_url: "https://leafly-public.imgix.net/strains/photos/5SPDG4T4TcSO8PgLgWHO_SourDiesel_AdobeStock_171888473.jpg?auto=compress,format&w=350&dpr=1")

pineapple_express = Medication.create(medication_name: "Pineapple Express", thc_strength: 18, cbd_strength: 0, feelings: "Happy · Talkative · Energetic", negatives: "Dry mouth · Paranoid · Dry eyes", helps_with: "Anxiety · Stress · Depression", details: "Pineapple Express is a sativa-dominant hybrid cannabis strain made by crossing Trainwreck with Hawaiian. While this strain rose to fame on the silver screen in 2008 amidst the release of Pineapple Express, it is a real strain that you can find on the shelves of dispensaries across the country.  Since then, this strain has become a favorite in the hearts and minds of cannabis lovers. Pineapple Express produces long-lasting energetic effects that you can feel right away. Pineapple Express is 18% THC and may make you feel buzzy, alert, and creative. The best time to smoke Pineapple Express is in the morning, afternoon, or early evening hours. In terms of flavor, this strain packs a punch to your pallet with bright citrus notes infused with pineapple and earthy pine, thanks to the terpenes of caryophyllene limonene and Ocimene. ", aka: "Pineapple Express", patient_id: jordan.id, image_url: "https://images.leafly.com/flower-images/pineapple-express.png?auto=compress,format&w=215&dpr=1")

grandaddy_purple = Medication.create(medication_name: "Granddaddy Purple", thc_strength: 18, cbd_strength: 0, feelings: "Sleepy · Hungry · Relaxed", negatives: "Dry mouth · Dizzy · Dry eyes", helps_with: "Anxiety · Stress · Pain", details: "Granddaddy Purple is a famous indica cross of Mendo Purps, Skunk, and Afghanistan. This California staple inherits a complex grape and berry aroma from its Mendo Purps and Afghanistan parent, while Skunk passes on its oversized, compact bud structure. GDP flowers bloom in shades of deep purple, a contrasting backdrop for its snow-like dusting of white crystal resin. Its potent effects are clearly detectable in both mind and body, delivering a fusion of cerebral euphoria and physical relaxation. While your thoughts may float in a dreamy buzz, your body is more likely to find itself fixed in one spot for the duration of GDP's effects.", aka: "Grand Daddy Purp, Granddaddy Purple Kush, Granddaddy Purps, GDP", patient_id: samantha.id, image_url: "https://images.leafly.com/flower-images/granddaddy-purple.png?auto=compress,format&w=350&dpr=1")

biscotti = Medication.create(medication_name: "Biscotti", thc_strength: 21, cbd_strength: 0, feelings: "Tiingly · Relaxed · Hungry", negatives: "Headache · Paranoid · Anxious", helps_with: "Anxiety · Stress · Depression", details: "Biscotti is a potent indica-dominant hybrid cannabis strain made by crossing Gelato 25 with Sour Florida OG. This strain produces a cerebral high that leave consumers feeling relaxed, creative, and buzzy from head-to-toe. The effects of Biscotti are known to creep up on consumers, so it's best to take it slow with this strain. In terms of flavor, Biscotti tastes like sweet cookies with undertones of diesel. With a THC level of 21%, medical marijuana patients turn to this strain to relieve symptoms associated with stress, anxiety, and depression.", aka: "Biscottis", patient_id: matteo.id, image_url: "https://images.leafly.com/flower-images/defaults/purple/strain-17.png?auto=compress,format&w=215&dpr=1")

sherbert = Medication.create(medication_name: "Sherbert", thc_strength: 18, cbd_strength: 0, feelings: "Relaxed · Happy · Giggly", negatives: "Dry mouth · Dry eyes · Anxious", helps_with: "Anxiety · Stress · Depression", details: "Sherbert is an indica-dominant hybrid cannabis strain made by crossing Girl Scout Cookies with Pink Panties. This strain exhibits powerful, full-body effects that are elevated by a jolt of cerebral energy and carefree state of mind. Sherbet boasts a THC level of 18% and may be overwhelming to novice cannabis consumers. The high potency of Sherbert makes it an ideal choice for medical marijuana patients seeking relief from symptoms associated with stress, tension, and mood disorders.", aka: "Sunset Sherbert, Sherbert OG", patient_id: divya.id, image_url: "https://images.leafly.com/flower-images/sunset-sherbert.jpg?auto=compress,format&w=215&dpr=1")

og_kush = Medication.create(medication_name: "OG Kush", thc_strength: 18, cbd_strength: 0, feelings: "Euphoric · Sleepy · Hungry", negatives: "Dry mouth · Dry eyes · Paranoid", helps_with: "Anxiety · Stress · Pain", details: "OG Kush was first cultivated in Florida in the early 90s when a marijuana strain from Northern California was supposedly crossed with Chemdawg, Lemon Thai and a Hindu Kush plant from Amsterdam. The result was a hybrid with a unique terpene profile that boasts a complex aroma with notes of fuel, skunk, and spice. OG often refers to “Original Gangster,” indicating either the strain's authenticity or intensity.  OG Kush should smell like lemon-pine-fuel with a high-THC, mixed head and body effect. It's often enjoyed in the back half of the day to ease stress.", aka: "Premium OG Kush", patient_id: samantha.id, image_url: "https://images.leafly.com/flower-images/og-kush.png?auto=compress,format&w=215&dpr=1")

oreoz = Medication.create(medication_name: "Oreoz", thc_strength: 20, cbd_strength: 0, feelings: "Relaxed · Happy · Hungry", negatives: "Headache · Anxious · Paranoid", helps_with: "Anxiety · Stress · Depression", details: "Oreoz is a potent hybrid marijuana strain made by crossing Cookies and Cream with Secret Weapon. This strain produces a long-lasting and relaxing high. Consumers should take caution as the high potency of Oreoz may be overwhelming to those new to cannabis. This strain has an aroma reminiscent of campfire s'mores, with extra delicious hints of chocolate and diesel.", aka: "Oreo Cookies, Oreos", patient_id: todd.id, image_url: "https://images.leafly.com/flower-images/defaults/red-orange-amber/strain-4.png?auto=compress,format&w=350&dpr=1")

oreoz = Medication.create(medication_name: "Oreoz", thc_strength: 20, cbd_strength: 0, feelings: "Relaxed · Happy · Hungry", negatives: "Headache · Anxious · Paranoid", helps_with: "Anxiety · Stress · Depression", details: "Oreoz is a potent hybrid marijuana strain made by crossing Cookies and Cream with Secret Weapon. This strain produces a long-lasting and relaxing high. Consumers should take caution as the high potency of Oreoz may be overwhelming to those new to cannabis. This strain has an aroma reminiscent of campfire s'mores, with extra delicious hints of chocolate and diesel.", aka: "Oreo Cookies, Oreos", patient_id: staci.id, image_url: "https://images.leafly.com/flower-images/defaults/red-orange-amber/strain-4.png?auto=compress,format&w=350&dpr=1")


biscotti = Medication.create(medication_name: "Biscotti", thc_strength: 21, cbd_strength: 0, feelings: "Tiingly · Relaxed · Hungry", negatives: "Headache · Paranoid · Anxious", helps_with: "Anxiety · Stress · Depression", details: "Biscotti is a potent indica-dominant hybrid cannabis strain made by crossing Gelato 25 with Sour Florida OG. This strain produces a cerebral high that leave consumers feeling relaxed, creative, and buzzy from head-to-toe. The effects of Biscotti are known to creep up on consumers, so it's best to take it slow with this strain. In terms of flavor, Biscotti tastes like sweet cookies with undertones of diesel. With a THC level of 21%, medical marijuana patients turn to this strain to relieve symptoms associated with stress, anxiety, and depression.", aka: "Biscottis", patient_id: elizabeth.id, image_url: "https://images.leafly.com/flower-images/defaults/purple/strain-17.png?auto=compress,format&w=215&dpr=1")

biscotti = Medication.create(medication_name: "Biscotti", thc_strength: 21, cbd_strength: 0, feelings: "Tiingly · Relaxed · Hungry", negatives: "Headache · Paranoid · Anxious", helps_with: "Anxiety · Stress · Depression", details: "Biscotti is a potent indica-dominant hybrid cannabis strain made by crossing Gelato 25 with Sour Florida OG. This strain produces a cerebral high that leave consumers feeling relaxed, creative, and buzzy from head-to-toe. The effects of Biscotti are known to creep up on consumers, so it's best to take it slow with this strain. In terms of flavor, Biscotti tastes like sweet cookies with undertones of diesel. With a THC level of 21%, medical marijuana patients turn to this strain to relieve symptoms associated with stress, anxiety, and depression.", aka: "Biscottis", patient_id: jessica.id, image_url: "https://images.leafly.com/flower-images/defaults/purple/strain-17.png?auto=compress,format&w=215&dpr=1")


puts "✅ Done seeding!"


# 10.times do |i|
#     puts "Creating medication #{i+1}"
#     Medication.create(
#         medication_name: "Medication #{i+1}",
#         thc_strength: "Medication #{i+1}",
#         cbd_strength: "Medication #{i+1}",
#         feelings: "Medication #{i+1}",
#         negatives: "Medication #{i+1}",
#         helps_with: "Medication #{i+1}",
#         details: "Medication #{i+1}",
#         aka: "Medication #{i+1}",
#         image_url: "Medication #{i+1}",
#         patient_id: "Medication #{i+1}"
#     )
# end 

# 10.times do |i|
#     puts "Creating patient #{i+1}"
#     Patient.create(
#         first_name: "Patient #{i+1}",
#         last_name: "Patient #{i+1}",
#         birthday: "Patient #{i+1}",
#         gender: "Patient #{i+1}",
#         phone_number: "Patient #{i+1}",
#         address: "Patient #{i+1}",
#         allergies: "Patient #{i+1}"
#     )
# end 
