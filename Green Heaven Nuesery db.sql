-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 06:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tools_stats_cachedvalue`
--

CREATE TABLE `admin_tools_stats_cachedvalue` (
  `id` bigint(20) NOT NULL,
  `date` datetime(6) NOT NULL,
  `time_scale` varchar(90) NOT NULL,
  `operation` varchar(90) DEFAULT NULL,
  `operation_field_name` varchar(90) DEFAULT NULL,
  `filtered_value` varchar(512) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `dynamic_choices` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`dynamic_choices`)),
  `multiple_series_choice_id` bigint(20) DEFAULT NULL,
  `stats_id` bigint(20) NOT NULL,
  `is_final` tinyint(1) NOT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_tools_stats_criteriatostatsm2m`
--

CREATE TABLE `admin_tools_stats_criteriatostatsm2m` (
  `id` bigint(20) NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL CHECK (`order` >= 0),
  `prefix` varchar(255) NOT NULL,
  `use_as` varchar(90) NOT NULL,
  `criteria_id` bigint(20) NOT NULL,
  `stats_id` bigint(20) NOT NULL,
  `default_option` varchar(255) NOT NULL,
  `choices_based_on_time_range` tinyint(1) NOT NULL,
  `count_limit` int(10) UNSIGNED DEFAULT NULL CHECK (`count_limit` >= 0),
  `recalculate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_article`
--

CREATE TABLE `article_article` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_on` datetime(6) NOT NULL,
  `related_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_article`
--

INSERT INTO `article_article` (`id`, `title`, `image`, `body`, `create_at`, `update_on`, `related_category_id`) VALUES
(2, 'The Science of Indoor Gardening: Understanding Plant Needs', 'media/img/Article/4.jpg', 'The Science of Indoor Gardening: Understanding Plant Needs\r\n\r\nEmbarking on the journey of indoor gardening is not merely a hobby; it\'s a science. To cultivate a thriving indoor garden, it\'s essential to grasp the fundamental principles governing plant growth and well-being. By understanding the specific needs of your indoor plants, you can create an environment where they flourish and bring natural beauty into your home.\r\n\r\nLight: The Engine of Growth\r\nLight is the primary driving force behind photosynthesis, the process through which plants convert light energy into chemical energy, ultimately fueling their growth. Different plants have varying light requirements. Assess the natural light conditions in your home and choose plants that thrive in low, medium, or bright light environments. Supplemental artificial lighting, such as fluorescent or LED grow lights, can be beneficial for plants with higher light needs.\r\n\r\nWater: Nourishing the Roots\r\nWater is a vital component of plant growth, facilitating nutrient absorption and supporting various metabolic processes. The key is finding the right balance. Overwatering can lead to root rot, while underwatering can stress plants. Understand the specific water requirements of each plant species in your indoor garden and develop a watering schedule accordingly. Factors like humidity levels, seasonality, and potting medium also influence watering needs.\r\n\r\nSoil: A Foundation for Success\r\nThe choice of soil directly impacts the health of your indoor plants. Different plants thrive in different soil types. Ensure good drainage to prevent waterlogging, and consider using specialized potting mixes tailored to the needs of specific plant varieties. Regularly repotting plants allows for the replenishment of nutrients and promotes healthy root development.\r\n\r\nTemperature and Humidity: Creating an Ideal Climate\r\nPlants have preferred temperature and humidity ranges for optimal growth. Consider the natural climate of the plants you choose and aim to replicate it as closely as possible. Be mindful of temperature fluctuations, especially during seasonal changes, and adjust your indoor climate accordingly. Grouping plants with similar temperature and humidity preferences can create microenvironments that benefit their collective well-being.\r\n\r\nNutrients: Feeding for Flourishing\r\nPlants require a balanced diet of essential nutrients, including nitrogen, phosphorus, potassium, and trace elements. While soil provides some nutrients, indoor plants often benefit from supplemental fertilization. Choose a fertilizer formulation suited to the growth phase of your plants and apply it according to recommended guidelines. Regularly monitor plant health to adjust nutrient levels as needed.\r\n\r\nConclusion: Cultivating Green Mastery\r\nIndoor gardening is a dynamic interplay of science and art. By delving into the scientific aspects of plant care, you empower yourself to become a green thumb maestro. Observe, experiment, and fine-tune your indoor gardening practices based on the unique needs of each plant species. As you deepen your understanding of the science behind indoor gardening, you\'ll unlock the secrets to a vibrant and flourishing home oasis.\r\n\r\nIn the realm of indoor gardening, knowledge truly is power, and the journey to becoming a successful indoor gardener is a rewarding adventure guided by the principles of plant science.', '2024-03-03 08:30:57.618784', '2024-03-03 08:43:37.000000', 1),
(3, 'Greening Your Space: The Ultimate Guide to Indoor Plants', 'media/img/Article/6.jpg', 'Introduction:\r\nCreating a lush and vibrant indoor environment is not only aesthetically pleasing but also beneficial for your well-being. Indoor plants have the power to purify the air, boost your mood, and add a touch of nature to your surroundings. In this ultimate guide, we\'ll explore the diverse world of indoor plants, offering insights into their care, benefits, and how to choose the perfect green companions for your space.\r\n\r\nBenefits of Indoor Plants:\r\na. Air Purification: Learn how indoor plants can filter out common pollutants, enhancing the air quality in your home or office.\r\nb. Stress Reduction: Discover the psychological benefits of surrounding yourself with greenery, including reduced stress and increased productivity.\r\n\r\nChoosing the Right Plants:\r\na. Low-Maintenance Options: Explore a variety of low-maintenance indoor plants suitable for beginners or those with busy lifestyles.\r\nb. Aesthetic Considerations: Find out how to select plants that complement your décor and personal style.\r\n\r\nCaring for Indoor Plants:\r\na. Light and Water Requirements: Understand the essential elements of proper lighting and watering for various indoor plant species.\r\nb. Common Issues and Solutions: Learn to identify and address common problems such as pests, diseases, and other challenges in plant care.\r\n\r\nPopular Indoor Plant Species:\r\na. Succulents and Cacti: Explore the unique features and care tips for these trendy, low-water plants.\r\nb. Foliage Plants: Discover the beauty of foliage-focused plants and how they can add texture and color to your indoor space.\r\n\r\nDIY Plant Projects:\r\na. Terrariums: Step-by-step guide on creating your own miniature ecosystem with a variety of plants.\r\nb. Plant Propagation: Learn the art of multiplying your plant collection through simple propagation techniques.\r\n\r\nIncorporating Plants into Different Spaces:\r\na. Home Offices: Tips on selecting plants that thrive in office environments and boost concentration.\r\nb. Bedrooms: Explore plants that contribute to better sleep and create a serene bedroom atmosphere.\r\n\r\nSeasonal Considerations:\r\na. Year-Round Care: Understand how to adjust your plant care routine to accommodate seasonal changes.\r\nb. Holiday Decorating: Get creative with using indoor plants as part of your festive decorations.\r\n\r\nAdvanced Plant Care Techniques:\r\na. Hydroponics and Aeroponics: Delve into advanced methods of indoor plant cultivation.\r\nb. Plant Companionship: Discover how certain plant combinations can benefit each other\'s growth.\r\n\r\nConclusion:\r\nEmbrace the green revolution by incorporating indoor plants into your living and working spaces. This ultimate guide provides the knowledge and inspiration needed to cultivate a thriving indoor garden, transforming your environment into a healthier, more vibrant haven. Whether you\'re a novice or a seasoned plant enthusiast, there\'s always room to enhance your space with the beauty and benefits of indoor plants.', '2024-03-03 08:33:50.154708', '2024-03-03 08:47:26.000000', 1),
(4, 'Indoor Herb Gardens: Bringing Fresh Flavors to Your Kitchen', 'media/img/Article/Herbs_1.jpeg', 'Introduction:\r\nImagine stepping into your kitchen and plucking fresh herbs to elevate the flavors of your culinary creations. Indoor herb gardens offer a convenient and rewarding way to bring the essence of a thriving garden into the heart of your home. In this article, we will explore the joys of cultivating an indoor herb garden, from selecting the right herbs to providing care tips and creative ways to incorporate these aromatic plants into your daily cooking routine.\r\n\r\nSelecting the Perfect Herbs:\r\na. Culinary Staples: Identify essential herbs for cooking like basil, rosemary, thyme, and mint.\r\nb. Customizing Your Garden: Tailor your herb selection to match your favorite cuisines and dishes.\r\n\r\nChoosing the Right Containers:\r\na. Space-Saving Options: Explore various container types, from traditional pots to hanging planters, suitable for any kitchen size.\r\nb. DIY Herb Planters: Get creative with homemade herb containers using recycled materials.\r\n\r\nOptimal Growing Conditions:\r\na. Light Requirements: Understand the lighting needs of different herbs and how to provide adequate exposure indoors.\r\nb. Soil and Watering Tips: Learn about the right soil mix and watering routine to ensure healthy herb growth.\r\n\r\nCaring for Your Herb Garden:\r\na. Pruning and Harvesting: Discover the art of pruning to promote bushier growth and how to harvest herbs without compromising their vitality.\r\nb. Dealing with Pests: Identify common pests and natural methods to protect your herbs without resorting to harmful chemicals.\r\n\r\nCreative Uses for Fresh Herbs:\r\na. Cooking and Seasoning: Explore ways to incorporate fresh herbs into your daily meals for enhanced flavors.\r\nb. Homemade Infusions: Learn how to make herb-infused oils, vinegars, and syrups to add a gourmet touch to your dishes.\r\n\r\nCompanion Planting with Herbs:\r\na. Natural Pest Control: Discover how certain herbs can repel pests and protect your other plants.\r\nb. Flavor Combinations: Explore herb pairings that not only enhance each other\'s growth but also complement your cooking.\r\n\r\nHerb Garden Themes:\r\na. Mediterranean Garden: Create a Mediterranean-inspired herb garden with rosemary, oregano, and thyme.\r\nb. Tea Garden: Explore the world of herbal teas by cultivating a garden with chamomile, mint, and lavender.\r\n\r\nTeaching Kids About Herbs:\r\na. Educational Opportunities: Involve children in the herb gardening process to teach them about plants, flavors, and sustainability.\r\nb. Fun Herb-Related Activities: Engage kids with herb-themed crafts and recipes for a hands-on learning experience.\r\n\r\nConclusion:\r\nTransform your kitchen into a culinary haven with an indoor herb garden. From selecting the right herbs to creative uses and companion planting, this guide equips you with the knowledge and inspiration to cultivate fresh flavors at your fingertips. Embrace the joy of nurturing your herb garden and elevate your cooking with the vibrant, aromatic essence of homegrown herbs.', '2024-03-03 08:39:03.514907', '2024-03-03 08:49:13.000000', 1),
(5, 'Monsoon Gardening Tips: Keeping Your Plants Healthy and Happy', 'media/img/Article/monsoon_1.jpg', 'Introduction:\r\nThe arrival of the monsoon season brings relief from the heat but also poses challenges for gardeners. Excessive rainfall, increased humidity, and potential waterlogged soil can impact the health of your plants. In this article, we\'ll provide essential monsoon gardening tips to help you navigate this season, ensuring your garden remains a thriving and verdant oasis.\r\n\r\nPrepare Your Soil:\r\n Improving Drainage: Amend soil with organic matter to enhance drainage and prevent waterlogging.\r\nMulching: Apply a layer of mulch to retain moisture, regulate soil temperature, and prevent erosion.\r\n\r\nChoose Resilient Plants:\r\nMonsoon-Friendly Varieties: Select plants that thrive in high humidity and are resistant to common monsoon diseases.\r\n Indigenous Flora: Opt for native plants that are adapted to the local climate, requiring less maintenance.\r\n\r\nWatering Wisely:Adjust Watering Schedule: Be mindful of rainfall and adjust your watering schedule accordingly to avoid overwatering.\r\n Morning Watering: Water plants in the morning to allow excess moisture to evaporate during the day, reducing the risk of fungal diseases.\r\n\r\nPruning and Maintenance:. Trim Overgrown Foliage: Prune excessively dense growth to improve air circulation and minimize the risk of fungal infections.\r\n Inspect for Pests: Regularly check plants for pests attracted to damp conditions and address any infestations promptly.\r\n\r\nProtecting Against Fungal Diseases:\r\n Fungicide Application: Consider using organic fungicides to prevent and control common monsoon diseases like powdery mildew and leaf spot.\r\n Proper Spacing: Planting with adequate spacing facilitates air circulation, reducing the risk of fungal infections.\r\n\r\nSupport for Tall Plants: Staking: Secure tall plants to prevent them from bending or breaking during heavy winds or downpours. Trellising: Train vining plants on trellises to keep them off the ground, minimizing contact with damp soil.\r\n\r\nContainer Gardening Tips:\r\nDrainage Holes: Ensure that containers have proper drainage holes to prevent water accumulation.\r\nElevate Containers: Place pots on raised surfaces to prevent waterlogging and root rot.\r\n\r\nGarden Cleanup:\r\n Remove Fallen Leaves: Regularly clear fallen leaves and debris to reduce the risk of fungal growth and pest infestations.\r\n Proper Disposal: Dispose of diseased plant material away from the garden to prevent the spread of diseases.\r\n\r\nConclusion:\r\nWith these monsoon gardening tips, you can safeguard your garden against the challenges posed by heavy rainfall and increased humidity. By being proactive and adopting preventive measures, you ensure that your plants not only survive but thrive during the monsoon season. Embrace the beauty of a lush and vibrant garden, even in the midst of the rainy season, and enjoy the tranquility of nature at its finest.', '2024-03-03 08:45:53.687206', '2024-03-03 08:59:27.000000', 1),
(6, 'Rainy Season Pests: Identifying and Managing Common Issues.', 'media/img/Article/monsoon_2.jpg', 'Introduction:\r\nWhile the rainy season brings much-needed moisture to your garden, it also creates a conducive environment for various pests to thrive. Identifying and managing these pests is crucial to maintaining the health and productivity of your plants. In this article, we will explore common rainy season pests, their characteristics, and effective strategies for managing infestations.\r\n\r\nAphids:\r\n\r\nSmall, soft-bodied insects that cluster on the undersides of leaves, sucking sap from plants.\r\nIntroduce natural predators like ladybugs or use insecticidal soap for control.\r\nFungal Diseases:\r\n\r\nSymptoms include powdery mildew, leaf spot, and blight, often exacerbated by high humidity.\r\nImprove air circulation, apply fungicides, and practice proper watering to reduce humidity around plants.\r\nSlugs and Snails:\r\n\r\nSlimy pests that emerge during wet conditions, leaving holes in leaves and devouring tender plant shoots.\r\nSet up barriers like copper tape, use natural predators, or employ beer traps to deter and capture them.\r\nMosquitoes and Gnats:\r\n\r\nBreeding in stagnant water, mosquitoes and gnats can be a nuisance and carriers of diseases.\r\nEliminate standing water, use mosquito dunks in water features, and consider natural repellents.\r\nWhiteflies:\r\n\r\nTiny, white insects found on the undersides of leaves, causing yellowing and wilting of plants.\r\nIntroduce natural enemies like parasitic wasps and use insecticidal soap or neem oil.\r\nCaterpillars:\r\n\r\nLarvae of butterflies and moths that chew on leaves and foliage.\r\nHandpick caterpillars, use organic insecticides, or encourage natural predators like birds and beneficial insects.\r\nSnails and Slugs:\r\n\r\nSlime-producing pests that feed on young plants and can be particularly damaging during wet weather.\r\nEmploy physical barriers, such as crushed eggshells, diatomaceous earth, or copper tape.\r\nThrips:\r\n\r\nTiny, slender insects that feed on plant sap, causing stippling and discoloration of leaves.\r\nUse insecticidal soap, neem oil, or introduce predatory insects like lacewings.\r\nRoot Rot:\r\n\r\nFungal infection affecting plant roots, leading to wilting, yellowing, and stunted growth.\r\nImprove soil drainage, avoid overwatering, and use fungicides if necessary.\r\nSpider Mites:\r\n\r\nNearly microscopic pests that thrive in hot, dry conditions, causing stippling and webbing on plants.\r\nIncrease humidity, use insecticidal soap, and introduce natural predators like predatory mites.\r\nConclusion:\r\nUnderstanding the pests that flourish during the rainy season is the first step in effective pest management. By identifying these common issues and implementing appropriate strategies, you can protect your garden from potential damage and ensure the continued health and vitality of your plants throughout the wet season. Regular monitoring, preventive measures, and a proactive approach will contribute to a thriving garden despite the challenges posed by rainy season pests.', '2024-03-03 09:03:11.624640', '2024-03-03 09:16:53.000000', 1),
(7, 'Creeping Plants in Small Spaces: Maximizing Garden Potential', 'media/img/Article/creeper_1.webp', 'Introduction:\r\nIn small gardens, every inch of space counts, and using creeping plants can be a game-changer. These versatile and low-maintenance plants can transform compact areas into lush, green retreats. In this article, we\'ll explore the world of creeping plants, discussing their benefits, how to select the right ones, and creative ways to make the most of these green wonders in your limited garden space.\r\n\r\nBenefits of Creeping Plants:\r\n\r\nSpace Maximization: Creeping plants spread horizontally, covering the ground and creating a dense, green carpet, maximizing the use of available space.\r\nAesthetic Appeal: These plants add texture, color, and visual interest to small spaces, turning them into inviting and cozy areas.\r\nSelecting the Right Creeping Plants:\r\n\r\nLow Maintenance: Choose creeping plants that are easy to care for and require minimal attention.\r\nSuitable for Your Climate: Select plants that thrive in your specific climate and growing conditions.\r\nGround Covers for Every Season:\r\n\r\nSpring Bloomers: Explore creeping plants that burst into vibrant blooms during the spring, such as creeping phlox or groundcover roses.\r\nEvergreen Options: Choose evergreen ground covers for year-round foliage, providing structure and color even in winter.\r\nContainer Gardening with Creepers:\r\n\r\nHanging Baskets: Use trailing and cascading plants in hanging baskets to add vertical interest and create a sense of abundance.\r\nBalcony Gardens: Transform small balconies into green havens by incorporating potted creeping plants along railings and walls.\r\nVertical Gardening with Creeping Vines:\r\n\r\nClimbing Vines: Utilize vertical space by planting climbing vines like ivy or clematis on walls, trellises, or arbors.\r\nGreen Screens: Create natural screens or dividers with tall creeping plants to add privacy and define different areas within your small garden.\r\nRock Gardens and Creeping Succulents:\r\n\r\nSucculent Varieties: Opt for low-growing succulents like sedum or hens-and-chicks to fill gaps in rock gardens.\r\nDrought Tolerance: Creeping succulents are often drought-tolerant, making them ideal for water-wise gardening in small spaces.\r\nEdible Ground Covers:\r\n\r\nHerb Creepers: Integrate edible creeping herbs like thyme, oregano, or mint to create a functional and flavorful ground cover.\r\nStrawberry Ground Cover: Grow low-spreading strawberries for a delicious and decorative ground cover with sweet berries.\r\nMaintenance Tips for Creeping Plants:\r\n\r\nPruning and Containment: Regularly trim and prune to control the spread of creeping plants and maintain a tidy appearance.\r\nSoil Enrichment: Ensure well-draining soil and amend it with organic matter for optimal growth.\r\nConclusion:\r\nCreeping plants are the secret weapon for maximizing the potential of small garden spaces. Whether you\'re dealing with limited ground space, vertical surfaces, or containers, these adaptable plants offer a myriad of possibilities. Embrace the beauty and practicality of creeping plants to create a green oasis that transforms your small space into a thriving and visually captivating garden.', '2024-03-03 09:10:25.819686', '2024-03-03 09:24:06.000000', 1),
(8, 'Creepers Indoors: Bringing Greenery Inside with Climbing Plants', 'media/img/Article/creeper_3.jpg', 'Introduction:\r\nIndoor spaces can benefit greatly from the charm and vitality that climbing plants, also known as creepers, bring. These versatile green companions not only enhance the aesthetic appeal of your home but also contribute to improved air quality and overall well-being. In this article, we\'ll delve into the world of indoor climbing plants, exploring their selection, care, and creative ways to incorporate them into your living spaces.\r\n\r\nBenefits of Indoor Climbing Plants:\r\n\r\nAesthetic Enhancement: Climbing plants add a touch of nature, softening architectural lines and creating a visually pleasing indoor environment.\r\nAir Purification: Many indoor creepers help filter indoor air pollutants, contributing to a healthier home atmosphere.\r\nSelecting the Right Indoor Climbers:\r\n\r\nLight Requirements: Choose plants that thrive in your indoor light conditions, whether it\'s bright, indirect light or lower light levels.\r\nSpace Considerations: Consider the available space and choose a plant with a growth habit that suits your indoor setting.\r\nPopular Indoor Climbing Plants:\r\n\r\nPothos (Epipremnum aureum): Known for its low maintenance and air-purifying qualities, pothos is an excellent choice for beginners.\r\nDevil\'s Ivy (Scindapsus pictus): A trailing plant with attractive variegated leaves, Devil\'s Ivy is adaptable to various light conditions.\r\nPhilodendron (Philodendron hederaceum): With heart-shaped leaves, philodendrons are versatile and come in various varieties suited for indoors.\r\nHoya (Hoya carnosa): Also known as the wax plant, Hoya features glossy leaves and produces beautiful clusters of fragrant flowers.\r\nCreative Ways to Display Climbing Plants Indoors:\r\n\r\nHanging Planters: Suspend climbing plants in stylish hanging planters to create a dynamic and space-saving display.\r\nClimbing Frames or Trellises: Provide support for your plants with decorative frames or trellises against walls or in corners.\r\nMacramé Hangers: Embrace a bohemian aesthetic by placing climbing plants in macramé hangers, adding a touch of texture to your space.\r\nGreen Wall or Vertical Garden: Arrange multiple climbing plants on a vertical surface to form an indoor green wall for a stunning visual impact.\r\nIndoor Climbers in Different Rooms:\r\n\r\nLiving Room: Choose statement climbers like Monstera or Snake Plant to create a focal point in your living space.\r\nBedroom: Opt for calming and low-maintenance climbers like pothos or philodendron to bring a touch of nature to your bedroom.\r\nBathroom: Select humidity-loving plants like Devil\'s Ivy or Ferns for a lush and spa-like atmosphere in your bathroom.\r\nCare Tips for Indoor Climbing Plants:\r\n\r\nWatering: Be mindful of the specific water needs of your plant, allowing the soil to partially dry between waterings.\r\nPruning: Regularly prune to control the size and shape of your climbing plants and encourage healthy growth.\r\nFertilization: Feed your plants with a balanced liquid fertilizer during the growing season to promote lush foliage.\r\nAddressing Common Challenges:\r\n\r\nPests: Keep an eye out for common indoor pests like spider mites or scale insects and treat promptly.\r\nDiseases: Maintain good air circulation and avoid overwatering to prevent fungal diseases.\r\nConclusion:\r\nBringing climbing plants indoors is a delightful way to infuse your living spaces with the beauty of nature. Whether adorning walls, hanging from ceilings, or adding a touch of greenery to shelves, these indoor creepers offer endless possibilities for creative expression. Follow the care tips, choose the right plants, and enjoy the transforming power of climbing plants as they elevate the aesthetics and livability of your indoor spaces.', '2024-03-03 09:13:49.761306', '2024-03-03 09:27:28.000000', 1),
(9, 'Herbal Healing: The Medicinal Power of Common Herbs', 'media/img/Article/herbs_2.png', 'Introduction:\r\nFor centuries, various cultures around the world have recognized the potent healing properties of herbs. Beyond adding flavor to our dishes, many common herbs harbor medicinal benefits that can address a range of health issues. In this article, we\'ll explore the medicinal power of some readily available herbs, shedding light on their healing properties and how they can be incorporated into your wellness routine.\r\n\r\nPeppermint (Mentha piperita):\r\n\r\nDigestive Aid: Peppermint has been used for centuries to relieve indigestion, bloating, and gas.\r\nHeadache Relief: The menthol in peppermint can help alleviate tension headaches and migraines.\r\nLavender (Lavandula angustifolia):\r\n\r\nStress Reduction: Lavender is renowned for its calming properties, promoting relaxation and reducing stress and anxiety.\r\nSleep Aid: The soothing aroma of lavender can improve sleep quality and ease insomnia.\r\nChamomile (Matricaria chamomilla):\r\n\r\nDigestive Support: Chamomile tea can soothe an upset stomach and alleviate symptoms of indigestion.\r\nSleep Inducer: Known for its mild sedative effects, chamomile helps promote restful sleep.\r\nTurmeric (Curcuma longa):\r\n\r\nAnti-Inflammatory: Curcumin, the active compound in turmeric, has powerful anti-inflammatory properties, making it beneficial for conditions like arthritis.\r\nAntioxidant Boost: Turmeric is rich in antioxidants, aiding in overall cellular health and supporting the immune system.\r\nGinger (Zingiber officinale):\r\n\r\nNausea Relief: Ginger is effective in reducing nausea, whether caused by motion sickness, morning sickness, or chemotherapy.\r\nAnti-Inflammatory: Ginger\'s anti-inflammatory properties can help alleviate pain and stiffness associated with inflammatory conditions.\r\nEchinacea (Echinacea purpurea):\r\n\r\nImmune Support: Echinacea is commonly used to boost the immune system and reduce the severity and duration of colds.\r\nAnti-Viral Properties: Research suggests that echinacea may have antiviral effects, making it a popular choice during cold and flu seasons.\r\nRosemary (Rosmarinus officinalis):\r\n\r\nMemory Enhancement: Rosemary has been associated with improved cognitive function and memory retention.\r\nAnti-Bacterial Properties: The essential oil of rosemary exhibits antibacterial and antifungal properties.\r\nGarlic (Allium sativum):\r\n\r\nHeart Health: Garlic is known for its cardiovascular benefits, including lowering blood pressure and cholesterol levels.\r\nImmune Boost: The compounds in garlic have immune-boosting properties, helping the body defend against infections.\r\nHoly Basil (Ocimum sanctum):\r\n\r\nAdaptogenic Properties: Holy Basil, or Tulsi, is considered an adaptogen, helping the body adapt to stress and promoting overall resilience.\r\nAnti-Anxiety: The calming effects of Holy Basil can aid in reducing anxiety and promoting mental well-being.\r\nDandelion (Taraxacum officinale):\r\n\r\nLiver Detoxification: Dandelion has diuretic properties, promoting detoxification and supporting liver health.\r\nDigestive Aid: Dandelion root can stimulate digestion and relieve constipation.\r\nConclusion:\r\nThe medicinal power of common herbs extends far beyond their culinary uses. By incorporating these herbs into your daily routine, whether through teas, supplements, or as culinary additions, you can harness their therapeutic benefits to support your overall well-being. While herbs can be powerful allies in promoting health, it\'s essential to consult with a healthcare professional before making significant changes to your diet or using herbs as a primary form of treatment, especially if you have pre-existing medical conditions or are taking medications.', '2024-03-03 09:20:27.216792', '2024-03-03 09:34:05.000000', 1),
(10, 'Herb Gardening with Kids: A Fun and Educational Experience', 'media/img/Article/herbs_4.jpg', 'Introduction:\r\nIntroducing children to the world of gardening can be a delightful and educational experience, and herb gardening is a perfect way to spark their interest. Cultivating a herb garden with kids not only provides a hands-on opportunity to learn about plants but also instills a love for nature and healthy living. In this article, we\'ll explore the joys of herb gardening with kids, offering tips on getting started, selecting child-friendly herbs, and engaging activities that make the process both fun and educational.\r\n\r\nChoosing Kid-Friendly Herbs:\r\n\r\nEasy-to-Grow Varieties: Opt for herbs that are resilient and grow well in various conditions, such as basil, mint, chives, and parsley.\r\nFragrant Selections: Select herbs with distinct fragrances, allowing kids to engage their senses while exploring the garden.\r\nSetting Up the Herb Garden:\r\n\r\nContainer Gardening: Start with small containers or raised beds to make it easy for kids to reach and care for their herbs.\r\nAccessible Location: Choose a sunny spot that\'s easily accessible for watering, observing, and participating in daily care.\r\nHands-On Planting Activities:\r\n\r\nSeed Planting: Involve kids in the process by letting them plant herb seeds, explaining the germination process and the journey from seed to plant.\r\nTransplanting Seedlings: Teach them the importance of caring for young plants and transplanting seedlings into their designated containers.\r\nWatering and Maintenance Lessons:\r\n\r\nWatering Routine: Instill a sense of responsibility by assigning watering tasks and explaining the importance of consistent moisture for plant growth.\r\nPruning and Harvesting: Demonstrate how to trim herbs for healthy growth and involve kids in harvesting leaves for culinary use.\r\nEducational Opportunities:\r\n\r\nBotany Basics: Teach kids about the different parts of plants, the role of roots, stems, leaves, and flowers, and how plants produce food through photosynthesis.\r\nCulinary Lessons: Explore the culinary uses of herbs, discussing how they enhance flavors in cooking and encouraging kids to taste and smell different herbs.\r\nCreative Herb-Related Projects:\r\n\r\nHerb Markers: Craft personalized herb markers using materials like popsicle sticks, paint, and creativity.\r\nHerb Journals: Encourage kids to keep herb journals, documenting the growth stages, observations, and their experiences in the garden.\r\nSensory Exploration:\r\n\r\nSmell and Touch: Engage their senses by encouraging kids to smell and touch the herbs, discussing the unique scents and textures of each plant.\r\nHerb Tasting: Create a \"tasting day\" where kids can sample small amounts of different herbs, exploring various flavors.\r\nIncorporating Herb Gardening into Learning:\r\n\r\nMathematics: Use the garden as an opportunity for simple math activities, such as measuring plant height or spacing.\r\nScience Lessons: Explore scientific concepts like plant life cycles, pollination, and the role of sunlight in plant growth.\r\nCelebrating Achievements:\r\n\r\nHerb Garden Parties: Plan a celebration when herbs are ready for harvest, featuring a special meal prepared with the harvested herbs.\r\nShow and Tell: Allow kids to share their herb gardening experiences with friends, family, or classmates.\r\nFostering a Lifelong Love for Gardening:\r\n\r\nEncourage Responsibility: Reinforce the importance of regular care and responsibility, fostering a sense of accomplishment.\r\nCelebrate Growth: Celebrate the growth of the herb garden, emphasizing the connection between care, effort, and the flourishing plants.\r\nConclusion:\r\nHerb gardening with kids is a wonderful way to blend fun and education while fostering a love for nature. Through hands-on activities, sensory exploration, and creative projects, children can develop valuable skills and a deeper understanding of the natural world. Herb gardening becomes not only a hobby but a gateway to a lifelong appreciation for gardening, sustainability, and healthy living.', '2024-03-03 09:35:55.618984', '2024-03-03 09:49:30.000000', 1),
(11, 'Small-Space Fruit Gardening: Maximizing Yield in Limited Areas', 'media/img/Article/fruits_1.webp', 'Introduction:\r\nGrowing your own fruits is a rewarding endeavor, even if you have limited space. With thoughtful planning and strategic choices, small-scale fruit gardening can yield a bountiful harvest right on your doorstep. In this article, we\'ll explore effective strategies for maximizing fruit production in small spaces, covering fruit varieties suitable for containers, vertical gardening, and compact garden plots.\r\n\r\nSelecting Compact Fruit Varieties:\r\n\r\nDwarf Fruit Trees: Opt for dwarf or semi-dwarf fruit tree varieties that are specifically bred for small spaces, such as dwarf apple or peach trees.\r\nCompact Bushes: Choose compact berry bushes like dwarf blueberries or currants that thrive in containers and small garden plots.\r\nContainer Gardening for Fruits:\r\n\r\nPatio Fruit Trees: Grow fruits like citrus, figs, or cherries in large containers on patios or balconies, providing ample sunlight and proper drainage.\r\nStrawberry Towers: Utilize vertical space with strawberry towers, planting multiple tiers of strawberries in containers or hanging pockets.\r\nVertical Fruit Gardens:\r\n\r\nEspalier Techniques: Employ espalier techniques to train fruit trees, such as apples or pears, against walls or trellises, saving horizontal space.\r\nHanging Planters: Hang vertical planters or pockets to grow trailing fruits like strawberries, tomatoes, or even small melons, maximizing vertical gardening potential.\r\nBerry Hanging Baskets:\r\n\r\nHanging Strawberry Baskets: Suspend hanging baskets filled with strawberry plants in sunny locations, combining aesthetics with practical fruit production.\r\nHanging Raspberry or Blackberry Planters: Grow trailing berries in hanging containers to save ground space while enjoying a continuous harvest.\r\nFruit Espalier Techniques:\r\n\r\nApple or Pear Espalier: Train fruit trees against walls or fences using espalier techniques, creating a decorative and space-saving solution.\r\nVertical Grape Trellis: Grow grapes vertically on a trellis system, maximizing sunlight exposure and simplifying harvesting.\r\nMulti-Graft Fruit Trees:\r\n\r\nCombining Varieties: Opt for multi-graft fruit trees that feature multiple varieties on a single tree, allowing you to enjoy a variety of fruits in a confined space.\r\nColumnar Apple Trees: Select columnar apple trees that have a narrow, upright growth habit, making them suitable for small gardens or even containers.\r\nIntensive Planting Methods:\r\n\r\nSquare Foot Gardening: Utilize square foot gardening principles to efficiently plan and space fruit plants, maximizing yield in a confined area.\r\nContainer Stack Gardening: Stack containers or planters with fruit-bearing plants to create a tiered effect, optimizing space and sunlight exposure.\r\nCompanion Planting:\r\n\r\nBeneficial Pairings: Practice companion planting by combining fruit plants with companion plants that offer mutual benefits, such as attracting pollinators or repelling pests.\r\nHerb and Fruit Combos: Integrate compact herbs like basil or thyme among fruit plants, promoting biodiversity and deterring unwanted pests.\r\nSeasonal Succession Planting:\r\n\r\nContinuous Harvest: Plan for seasonal succession planting to ensure a continuous harvest throughout the growing season, maximizing the use of available space.\r\nOverlapping Crops: Plant quick-growing crops between slower-maturing fruit plants to make the most of the space during different stages of growth.\r\nOptimizing Sunlight Exposure:\r\n\r\nRotate Containers: Rotate container plants periodically to ensure each side receives adequate sunlight, preventing one side from shading another.\r\nUtilize Reflective Surfaces: Place reflective surfaces, such as mirrors or light-colored walls, strategically to enhance sunlight exposure for fruit-bearing plants.\r\nConclusion:\r\nSmall-space fruit gardening is not only achievable but can also be incredibly productive with the right strategies. By choosing compact varieties, utilizing vertical space, and implementing intensive planting methods, you can enjoy a diverse and plentiful harvest even in limited areas. Whether you have a balcony, patio, or a small backyard, implementing these techniques will help you create a fruitful and visually appealing garden space.', '2024-03-03 09:39:54.022305', '2024-03-03 09:53:32.000000', 1),
(12, 'Organic Fruit Gardening: Tips for Growing Fruits Naturally', 'media/img/Article/fruits_2.jpg', 'Introduction:\r\nEmbarking on the journey of organic fruit gardening allows you to cultivate delicious, pesticide-free fruits while promoting environmental sustainability. By embracing natural methods and fostering a balanced ecosystem, you can enjoy the sweet rewards of your labor while contributing to a healthier planet. In this article, we\'ll explore essential tips for growing fruits organically, covering soil health, pest management, and sustainable practices.\r\n\r\nStart with Healthy Soil:\r\n\r\nCompost Enrichment: Build nutrient-rich soil by incorporating compost, composted manure, or organic matter to enhance fertility.\r\nMulching: Apply organic mulch, such as straw or shredded leaves, to retain moisture, suppress weeds, and improve soil structure.\r\nChoose Organic Seeds or Plants:\r\n\r\nHeirloom Varieties: Opt for heirloom or organic seed varieties to maintain genetic diversity and support sustainable agriculture.\r\nLocal Nurseries: Source plants from local organic nurseries to ensure they are acclimated to your specific climate and conditions.\r\nCompanion Planting:\r\n\r\nNatural Pest Control: Plant companion crops that naturally deter pests or attract beneficial insects, creating a symbiotic and pest-resistant environment.\r\nHerb Companions: Integrate herbs like basil, oregano, or mint among fruit plants to repel pests and enhance flavor.\r\nPractice Crop Rotation:\r\n\r\nDisease Prevention: Implement crop rotation to reduce the risk of soil-borne diseases and pests targeting specific fruit varieties.\r\nBalanced Nutrient Uptake: Rotate fruit crops with nitrogen-fixing plants to maintain soil fertility and balance nutrient levels.\r\nWatering Wisely:\r\n\r\nDrip Irrigation: Use drip irrigation systems to deliver water directly to the root zone, minimizing water waste and reducing the risk of fungal diseases.\r\nRain Barrels: Collect rainwater in barrels to supplement irrigation, promoting water conservation and sustainability.\r\nNatural Fertilization:\r\n\r\nCompost Tea: Brew compost tea as a natural and nutrient-rich fertilizer to promote healthy growth without relying on synthetic chemicals.\r\nCover Crops: Plant cover crops like clover or legumes during the off-season to enhance soil fertility and prevent erosion.\r\nIntegrated Pest Management (IPM):\r\n\r\nBeneficial Insects: Attract beneficial insects like ladybugs, lacewings, and predatory beetles to control pest populations organically.\r\nNeem Oil: Use neem oil as a natural insect repellent and fungicide, addressing common issues while minimizing harm to beneficial insects.\r\nNatural Disease Prevention:\r\n\r\nCopper-based Sprays: Apply copper-based sprays to combat fungal diseases organically, particularly useful for fruits susceptible to mildew or blight.\r\nProper Spacing: Ensure adequate spacing between plants for good air circulation, reducing the risk of fungal infections.\r\nPruning and Training:\r\n\r\nOpen Canopy: Prune fruit trees to create an open canopy, allowing sunlight and air to reach all parts of the tree, reducing the risk of diseases.\r\nEspalier Techniques: Employ espalier techniques for space-saving and efficient fruit production, especially in limited garden areas.\r\nHarvest at the Right Time:\r\n\r\nPeak Ripeness: Harvest fruits at their peak ripeness for the best flavor and nutritional content, contributing to a more sustainable and satisfying experience.\r\nRegular Harvesting: Regularly pick fruits to encourage continuous production and prevent overripening or waste.\r\nConclusion:\r\nOrganic fruit gardening is not just about growing delicious and nutritious fruits but also about embracing a holistic and sustainable approach to agriculture. By prioritizing soil health, natural pest management, and eco-friendly practices, you can create a thriving organic fruit garden that benefits both you and the environment. Enjoy the abundance of your organic harvest while knowing that your efforts contribute to a healthier, more sustainable planet.', '2024-03-03 09:42:51.533268', '2024-03-03 09:56:31.000000', 1),
(13, 'Understanding Nitrogen Fertilizers: Benefits, Types, and Application', 'media/img/Article/nitrogen_2.jpg', 'Introduction:\r\nNitrogen is an essential nutrient for plant growth, playing a vital role in various metabolic processes such as photosynthesis and protein synthesis. While nitrogen is naturally present in the soil, agricultural practices often deplete this nutrient, necessitating the use of nitrogen fertilizers to ensure optimal plant health and productivity. In this article, we\'ll delve into the world of nitrogen fertilizers, exploring their benefits, different types, and best practices for application.\r\n\r\nThe Importance of Nitrogen Fertilizers:\r\n\r\nPlant Growth: Nitrogen is a key component of chlorophyll, the green pigment responsible for photosynthesis, which is essential for plant growth and vigor.\r\nYield and Quality: Adequate nitrogen levels contribute to increased crop yields and improved quality of fruits, vegetables, and grains.\r\nSoil Health: Nitrogen fertilizers help maintain soil fertility by replenishing nitrogen levels depleted by crops and other environmental factors.\r\nTypes of Nitrogen Fertilizers:\r\n\r\nUrea: Urea is a widely used nitrogen fertilizer, containing about 46% nitrogen. It is cost-effective and suitable for a variety of crops.\r\nAmmonium Nitrate: This fertilizer contains both ammonium and nitrate nitrogen, providing quick-release nitrogen for immediate plant uptake. It\'s commonly used for crops with high nitrogen demands.\r\nAmmonium Sulfate: Ammonium sulfate is a nitrogen fertilizer with sulfur, providing both essential nutrients. It\'s particularly beneficial for crops with sulfur deficiencies.\r\nNitrogen Solutions: Liquid nitrogen fertilizers, such as urea ammonium nitrate (UAN), are convenient for foliar application or injection through irrigation systems, ensuring efficient nutrient uptake by plants.\r\nBenefits of Nitrogen Fertilizers:\r\n\r\nFast-Acting: Many nitrogen fertilizers provide readily available nitrogen to plants, promoting rapid growth and green foliage.\r\nCustomizable Formulations: Nitrogen fertilizers come in various formulations, allowing growers to tailor applications based on crop needs, soil conditions, and environmental factors.\r\nEnhanced Nutrient Uptake: Nitrogen fertilizers can improve the efficiency of nutrient uptake by plants, leading to better overall nutrient utilization and plant health.\r\nBest Practices for Nitrogen Fertilizer Application:\r\n\r\nSoil Testing: Conduct soil tests to determine existing nitrogen levels and assess the need for additional fertilization.\r\nTiming: Apply nitrogen fertilizers at the right time to coincide with peak plant demand, typically during periods of active growth.\r\nApplication Methods: Consider various application methods, including broadcasting, side-dressing, fertigation, and foliar spraying, based on crop type, growth stage, and soil conditions.\r\nEnvironmental Considerations: Apply nitrogen fertilizers responsibly to minimize environmental impact, such as leaching into groundwater or runoff into water bodies. Follow recommended application rates and avoid over-fertilization.\r\nNitrogen Fertilizer Management Practices:\r\n\r\nSplit Applications: Divide nitrogen fertilizer applications into multiple doses throughout the growing season to meet the changing needs of crops and minimize nutrient loss.\r\nCover Crops: Utilize cover crops to capture and recycle excess nitrogen, preventing leaching and erosion while improving soil health.\r\nCrop Rotation: Rotate nitrogen-demanding crops with nitrogen-fixing legumes to reduce reliance on external nitrogen inputs and enhance soil fertility over time.\r\nChallenges and Considerations:\r\n\r\nNitrogen Loss: Nitrogen fertilizers are susceptible to various forms of loss, including leaching, volatilization, and denitrification. Implementing management practices to mitigate these losses is crucial.\r\nEnvironmental Impact: Excessive nitrogen application can contribute to environmental pollution, including eutrophication of water bodies and greenhouse gas emissions. Practicing precision nutrient management is essential for minimizing environmental harm.\r\nConclusion:\r\nNitrogen fertilizers play a critical role in modern agriculture, ensuring adequate nitrogen supply for optimal plant growth and productivity. Understanding the benefits, types, and best practices for nitrogen fertilizer application is essential for sustainable crop production while minimizing environmental impact. By adopting responsible fertilizer management practices, growers can maximize the efficiency of nitrogen use, promote soil health, and contribute to long-term agricultural sustainability.', '2024-03-03 10:14:53.690176', '2024-03-03 10:10:47.000000', 3),
(14, 'The Role of Nitrogen Fertilizers in Agricultural Production', 'media/img/Article/nitrogen_1.jpg', 'Nitrogen fertilizers play a crucial role in agricultural production by providing plants with the essential nutrient nitrogen, which is vital for their growth and development. Nitrogen is a fundamental component of proteins, nucleic acids, and chlorophyll, all of which are essential for plant growth, photosynthesis, and reproduction.\r\n\r\nHere are some key points highlighting the role of nitrogen fertilizers in agricultural production:\r\n\r\nPlant Growth and Development: Nitrogen is a primary component of amino acids, the building blocks of proteins. Proteins are essential for the growth and development of plant tissues, including leaves, stems, and roots. Adequate nitrogen availability promotes vigorous plant growth and enhances crop yields.\r\n\r\nPhotosynthesis: Nitrogen is a crucial component of chlorophyll, the pigment responsible for capturing light energy during photosynthesis. Chlorophyll molecules contain nitrogen in their structure, and without sufficient nitrogen, plants cannot efficiently convert sunlight into chemical energy. Nitrogen fertilizers help maintain optimal chlorophyll levels, thereby enhancing photosynthetic activity and increasing crop productivity.\r\n\r\nYield Improvement: Nitrogen fertilization is directly linked to increased crop yields in many agricultural systems. Providing plants with sufficient nitrogen allows them to produce more biomass and develop larger, healthier fruits, grains, or vegetables. As a result, farmers can achieve higher yields per unit area of cultivated land, contributing to food security and economic prosperity.\r\n\r\nSoil Fertility: Continuous cultivation and harvesting of crops can deplete soil nitrogen levels over time. Nitrogen fertilizers replenish soil fertility by supplying the essential nutrient needed for plant growth. Moreover, certain nitrogen fertilizers, such as ammonium-based ones, can also have acidifying effects on the soil, which may be beneficial in neutralizing alkaline soils or adjusting pH levels for specific crops.\r\n\r\nCrop Quality: Nitrogen availability influences not only the quantity but also the quality of agricultural produce. Adequate nitrogen fertilization promotes the synthesis of proteins, vitamins, and other compounds that contribute to the nutritional value, flavor, color, and shelf life of crops. Farmers often use nitrogen fertilizers strategically to optimize both yield and quality parameters.\r\n\r\nEnvironmental Impact: While nitrogen fertilizers are essential for maximizing agricultural productivity, their excessive or improper use can lead to environmental issues such as nitrogen runoff, water pollution, and greenhouse gas emissions. Nitrogen runoff from fields can contaminate water bodies, causing eutrophication and harming aquatic ecosystems. Additionally, nitrogen fertilizers can contribute to the emission of nitrous oxide (N2O), a potent greenhouse gas implicated in climate change. Sustainable agricultural practices, including precision fertilization techniques and the use of nitrogen-efficient crop varieties, are essential for minimizing these environmental impacts.\r\n\r\nIn summary, nitrogen fertilizers play a critical role in agricultural production by ensuring adequate nitrogen supply for plant growth, photosynthesis, and yield optimization. However, their use must be managed carefully to balance productivity goals with environmental sustainability objectives.', '2024-03-03 10:17:30.847240', '2024-03-03 10:31:13.000000', 3);
INSERT INTO `article_article` (`id`, `title`, `image`, `body`, `create_at`, `update_on`, `related_category_id`) VALUES
(15, 'Phosphorus Fertilizer Prices and Market Trends', 'media/img/Article/phosephours_1.jpeg', 'Phosphorus fertilizers are essential inputs in agriculture, providing plants with the necessary phosphorus nutrient crucial for various physiological processes, including energy transfer, root development, and flowering. Understanding phosphorus fertilizer prices and market trends is vital for farmers, policymakers, and stakeholders in the agricultural industry. Here\'s an overview of phosphorus fertilizer prices and market dynamics:\r\n\r\nPrice Volatility: Phosphorus fertilizer prices can be subject to significant volatility due to various factors, including changes in supply and demand dynamics, fluctuations in raw material costs (such as phosphate rock), currency exchange rates, weather conditions affecting agricultural production, and global economic trends.\r\n\r\nGlobal Demand and Supply: The demand for phosphorus fertilizers is driven by the global demand for food and the expansion of agricultural activities. Regions with intensive agricultural production, such as North America, Europe, and Asia, are significant consumers of phosphorus fertilizers. Meanwhile, the supply of phosphorus fertilizers depends largely on the availability and extraction of phosphate rock, the primary raw material used in their production. Major phosphate rock reserves are located in countries like Morocco, China, and the United States, which can influence global supply dynamics.\r\n\r\nRaw Material Costs: Phosphorus fertilizer prices are closely linked to the cost of phosphate rock, which is mined and processed to produce various phosphorus-based fertilizers, including diammonium phosphate (DAP), triple superphosphate (TSP), and monoammonium phosphate (MAP). Fluctuations in phosphate rock prices, driven by factors such as geological depletion, geopolitical tensions, mining regulations, and transportation costs, directly impact the pricing of phosphorus fertilizers.\r\n\r\nMarket Trends: Several trends influence the phosphorus fertilizer market, including shifts in agricultural practices, adoption of precision farming technologies, changes in fertilizer application rates and methods, environmental regulations governing nutrient management, and developments in alternative nutrient sources or soil amendments. For instance, there is growing interest in sustainable phosphorus management practices, such as the use of phosphorus-efficient crop varieties, organic fertilizers, and soil conservation strategies to minimize nutrient losses and improve nutrient use efficiency.\r\n\r\nTrade Dynamics: The phosphorus fertilizer market is characterized by significant international trade, with major exporting and importing countries participating in global trade flows. Trade agreements, tariffs, import/export policies, and logistical constraints can impact the flow of phosphorus fertilizers between regions, influencing market prices and supply chains.\r\n\r\nEnvironmental Considerations: Environmental concerns related to phosphorus runoff and water pollution have led to increased scrutiny of phosphorus fertilizer use and management practices. Regulatory measures aimed at reducing nutrient losses from agricultural runoff, such as nutrient management plans, nutrient stewardship programs, and sustainable farming initiatives, may influence phosphorus fertilizer market dynamics and pricing.\r\n\r\nIn summary, phosphorus fertilizer prices and market trends are influenced by a complex interplay of factors, including supply and demand dynamics, raw material costs, global trade patterns, technological advancements, and environmental considerations. Monitoring these trends and understanding their implications is essential for stakeholders involved in agricultural production, nutrient management, and fertilizer markets.', '2024-03-03 10:19:29.612400', '2024-03-03 10:33:10.000000', 3),
(16, 'Advances in Phosphorus Fertilizer Technology', 'media/img/Article/phosephours_2.jpg', 'Advances in phosphorus fertilizer technology have been pivotal in enhancing nutrient efficiency, minimizing environmental impacts, and optimizing crop productivity. Here are some key advancements in phosphorus fertilizer technology:\r\n\r\nSlow-release Formulations: Slow-release or controlled-release phosphorus fertilizers are designed to gradually release phosphorus nutrients over an extended period, aligning nutrient availability with crop demand. These formulations reduce the risk of nutrient leaching, runoff, and volatilization, thus improving nutrient use efficiency and minimizing environmental pollution.\r\n\r\nEnhanced Efficiency Fertilizers (EEFs): EEFs encompass a range of fertilizer products and management practices designed to enhance nutrient uptake and utilization by crops. In the case of phosphorus fertilizers, EEFs may include products with additives or coatings that improve nutrient release, protect against soil interactions that reduce phosphorus availability, or promote interactions with soil microorganisms to enhance nutrient cycling and uptake.\r\n\r\nPrecision Fertilization Technologies: Advances in precision agriculture technologies, such as global positioning systems (GPS), remote sensing, and variable rate application (VRA) systems, enable farmers to apply phosphorus fertilizers with greater precision and spatial accuracy. By tailoring fertilizer application rates to site-specific soil conditions, crop requirements, and yield goals, precision fertilization technologies optimize nutrient distribution, minimize wastage, and improve resource efficiency.\r\n\r\nPhosphorus Use Efficiency Traits: Biotechnological innovations have facilitated the development of crop varieties with improved phosphorus use efficiency (PUE), allowing plants to thrive under limited phosphorus availability. Through genetic engineering and breeding techniques, researchers have identified genes associated with enhanced phosphorus uptake, root architecture, and phosphorus utilization efficiency, enabling the development of phosphorus-efficient crop cultivars suited to different agroecological environments.\r\n\r\nNutrient Stewardship Practices: Integrated nutrient management (INM) approaches promote the judicious use of phosphorus fertilizers in conjunction with other nutrient inputs, organic amendments, and soil conservation practices. Nutrient stewardship practices, such as soil testing, nutrient budgeting, balanced fertilization, crop rotation, cover cropping, and conservation tillage, help optimize phosphorus fertilizer application rates, minimize nutrient losses, and maintain soil fertility while reducing environmental risks.\r\n\r\nBio-based and Recycled Phosphorus Fertilizers: Innovations in waste valorization and recycling technologies have enabled the production of bio-based and recycled phosphorus fertilizers from organic residues, wastewater streams, and by-products of various industries. These sustainable phosphorus sources not only supplement conventional fertilizers but also contribute to circular economy principles by closing nutrient loops, reducing reliance on finite phosphate rock reserves, and mitigating environmental impacts associated with conventional fertilizer production and disposal.\r\n\r\nIn summary, advances in phosphorus fertilizer technology encompass a spectrum of innovations aimed at improving nutrient efficiency, environmental sustainability, and agricultural resilience. By leveraging scientific insights, technological advancements, and interdisciplinary collaborations, researchers and practitioners continue to develop and adopt phosphorus fertilizer solutions that address the complex challenges of modern agriculture while safeguarding natural resources and ecosystems.', '2024-03-03 10:20:28.266280', '2024-03-03 10:34:09.000000', 3),
(17, 'Potassium Fertilizer Market Trends and Outlook', 'media/img/Article/potassium_1.jpg', 'The potassium fertilizer market is influenced by various factors, including global agricultural trends, demand-supply dynamics, technological advancements, and regulatory policies. Here\'s an overview of recent trends and the outlook for the potassium fertilizer market:\r\n\r\nIncreasing Demand: The demand for potassium fertilizers continues to grow steadily, driven by rising global population, changing dietary patterns, and increasing need for higher crop yields to ensure food security. Potassium is an essential nutrient for plant growth and plays a crucial role in various physiological processes, including water regulation, enzyme activation, and photosynthesis.\r\n\r\nCrop Mix and Regional Trends: Potassium fertilizers are widely used in the cultivation of a diverse range of crops, including cereals, fruits, vegetables, and oilseeds. Regional variations in crop preferences, soil fertility levels, and agronomic practices influence the demand for potassium fertilizers. For example, regions with intensive cultivation of potassium-demanding crops such as fruits and vegetables may exhibit higher per capita potassium fertilizer consumption.\r\n\r\nEmerging Markets: Emerging economies, particularly in Asia and Latin America, represent significant growth opportunities for the potassium fertilizer market. Rapid urbanization, expanding middle-class populations, and increasing disposable incomes in these regions are driving demand for high-value crops that require potassium fertilizers for optimal growth and yield.\r\n\r\nTechnological Innovations: Advances in potassium fertilizer formulations, such as enhanced efficiency fertilizers (EEFs) and controlled-release products, are enhancing nutrient uptake efficiency and reducing nutrient losses. These innovations aim to improve the effectiveness of potassium fertilizers while minimizing environmental impacts, addressing concerns related to nutrient runoff, leaching, and greenhouse gas emissions.\r\n\r\nSustainability Considerations: Growing awareness of environmental sustainability and regulatory initiatives aimed at mitigating nutrient pollution are influencing fertilizer market dynamics. Potassium fertilizers with lower environmental footprints, such as those produced using energy-efficient processes, sourced from recycled materials, or derived from renewable resources, are gaining traction among environmentally conscious farmers and policymakers.\r\n\r\nPrice Volatility and Supply Challenges: Potassium fertilizer prices are subject to fluctuations due to factors such as changes in global potash production, transportation costs, currency exchange rates, and geopolitical tensions. Supply challenges, including finite potassium reserves, production constraints, and logistical issues, can contribute to price volatility and supply chain disruptions, affecting market dynamics and farmer profitability.\r\n\r\nRegulatory Landscape: Regulatory frameworks governing fertilizer use, labeling, and nutrient management practices vary across countries and regions. Environmental regulations aimed at reducing nutrient runoff, promoting sustainable agriculture, and safeguarding water quality may influence the types of potassium fertilizers available in the market and the adoption of best management practices by farmers.\r\n\r\nOverall, the potassium fertilizer market is poised for continued growth, driven by increasing agricultural intensification, expanding global population, and evolving sustainability priorities. Technological innovations, market diversification, and regulatory alignment will play key roles in shaping the future outlook of the potassium fertilizer industry, with a focus on enhancing nutrient efficiency, environmental stewardship, and agricultural resilience.', '2024-03-03 10:22:41.242846', '2024-03-03 10:36:23.000000', 3),
(18, 'Potassium Fertilizers: Types, Application Methods, and Effects on Crop Yield', 'media/img/Article/potassium_2.webp', 'Potassium fertilizers are essential inputs in agriculture, providing plants with the necessary potassium nutrient vital for various physiological functions, including enzyme activation, osmoregulation, and nutrient transport. Understanding the types, application methods, and effects of potassium fertilizers on crop yield is crucial for optimizing nutrient management practices and enhancing agricultural productivity. Here\'s an overview:\r\n\r\nTypes of Potassium Fertilizers:\r\n\r\nPotassium Chloride (KCl): Potassium chloride is the most commonly used potassium fertilizer, containing a high percentage of potassium in the form of chloride ions. It is cost-effective and readily available, making it a popular choice for many farmers.\r\n\r\nPotassium Sulfate (K2SO4): Potassium sulfate provides potassium in the sulfate form, which may be preferable for crops sensitive to chloride ions, such as tobacco, fruits, and vegetables. It also supplies sulfur, an essential secondary nutrient.\r\n\r\nPotassium Nitrate (KNO3): Potassium nitrate contains both potassium and nitrogen in the nitrate form. It is often used in fertigation systems for its solubility and ability to supply both nutrients simultaneously.\r\n\r\nPotassium Magnesium Sulfate (K-Mag or Sul-Po-Mag): This fertilizer contains potassium, magnesium, and sulfur, providing a balanced nutrient profile suitable for crops requiring these elements.\r\n\r\nPotassium Carbonate (K2CO3): Potassium carbonate is less commonly used as a fertilizer but can be applied to correct soil pH in specific situations.\r\n\r\nPotassium-based Micronutrient Fertilizers: Some micronutrient fertilizers contain potassium along with other essential micronutrients like boron, zinc, or manganese, providing a comprehensive nutrient package for crops.\r\n\r\nApplication Methods of Potassium Fertilizers:\r\n\r\nBroadcast Application: Potassium fertilizers are spread evenly across the soil surface and incorporated into the soil through tillage or irrigation. This method is suitable for large-scale field crops and ensures uniform nutrient distribution.\r\n\r\nBand or Row Application: Fertilizers are placed in bands or rows close to the plant roots, allowing for more targeted nutrient placement. Banding can conserve fertilizer and reduce potential nutrient losses through leaching or runoff.\r\n\r\nFertigation: Potassium fertilizers can be dissolved in irrigation water and applied directly to the crop root zone through drip or sprinkler systems. Fertigation enables precise nutrient delivery and can be adjusted based on crop growth stages and nutrient requirements.\r\n\r\nFoliar Application: Potassium fertilizers in liquid form can be sprayed onto the foliage of plants, where they are absorbed directly through the leaves. Foliar application is often used to address acute nutrient deficiencies or during critical growth stages when root uptake may be limited.\r\n\r\nEffects of Potassium Fertilizers on Crop Yield:\r\n\r\nEnhanced Plant Growth: Adequate potassium supply promotes overall plant growth and development by regulating various physiological processes, including photosynthesis, water uptake, and nutrient translocation. Potassium-deficient plants may exhibit stunted growth, reduced leaf expansion, and increased susceptibility to environmental stresses.\r\n\r\nImproved Yield and Quality: Potassium fertilizers contribute to higher crop yields and improved quality parameters, such as increased fruit size, sugar content, and shelf life. Potassium plays a crucial role in fruit and grain filling processes, influencing yield components such as seed size, kernel weight, and fruit set.\r\n\r\nStress Tolerance: Potassium helps plants withstand abiotic stresses, such as drought, salinity, and temperature extremes, by regulating osmotic balance, stomatal function, and antioxidant metabolism. Potassium-deficient plants are more susceptible to stress-induced damage and yield losses.\r\n\r\nDisease Resistance: Optimal potassium nutrition can enhance plant defense mechanisms and resistance to certain diseases and pests. Potassium-sufficient plants may exhibit improved resistance to fungal pathogens, bacterial infections, and insect herbivory, resulting in healthier crops and reduced yield losses.\r\n\r\nIn summary, potassium fertilizers play a critical role in sustaining agricultural productivity and ensuring crop health and resilience. By selecting appropriate fertilizer types, applying them using suitable methods, and maintaining optimal potassium nutrition, farmers can maximize crop yields, improve product quality, and mitigate the risks of nutrient deficiencies and environmental stresses.', '2024-03-03 10:24:04.386861', '2024-03-03 10:37:46.000000', 3),
(19, 'Biofertilizer Market Dynamics: Trends, Opportunities, and Challenges', 'media/img/Article/bio_1.jpeg', 'The biofertilizer market is experiencing dynamic growth driven by several factors, including increasing demand for sustainable agricultural practices, growing awareness about environmental concerns, and regulatory support for eco-friendly farming solutions. Here\'s an overview of the trends, opportunities, and challenges shaping the biofertilizer market dynamics:\r\n\r\nTrends:\r\n\r\nGrowing Demand for Organic and Sustainable Agriculture: Consumer preferences for organic and sustainably produced food products are driving the demand for biofertilizers. Farmers are increasingly adopting biofertilizers as alternatives to synthetic fertilizers to meet consumer demands and adhere to organic certification standards.\r\n\r\nAdvancements in Biotechnology and Microbial Research: Innovations in biotechnology and microbial research have led to the development of more efficient and effective biofertilizer strains. Researchers are exploring the use of genetically engineered microbes and consortia for targeted nutrient delivery, enhanced nutrient cycling, and improved crop productivity.\r\n\r\nExpansion of Microbial Inoculant Products: The biofertilizer market is witnessing the expansion of microbial inoculant products, including nitrogen-fixing bacteria, phosphate-solubilizing microbes, and plant growth-promoting rhizobacteria (PGPR). These products offer specific benefits to crops, such as nitrogen fixation, phosphorus solubilization, and disease suppression.\r\n\r\nIntegration with Precision Agriculture Technologies: Biofertilizers are being integrated with precision agriculture technologies, such as GPS-guided equipment and sensor-based monitoring systems, to optimize their application and ensure targeted delivery to crop root zones. Precision application techniques help maximize the efficiency of biofertilizers and minimize wastage.\r\n\r\nOpportunities:\r\n\r\nExpanding Market Potential in Developing Regions: There is significant untapped market potential for biofertilizers in developing regions where sustainable agriculture practices are gaining traction. Rising awareness about soil health, environmental sustainability, and food security presents opportunities for biofertilizer companies to expand their presence in these markets.\r\n\r\nGovernment Support and Subsidies: Governments worldwide are implementing policies and providing subsidies to promote the adoption of biofertilizers as part of sustainable agriculture initiatives. Financial incentives, research grants, and regulatory frameworks supporting bio-based inputs create favorable conditions for market growth and investment.\r\n\r\nPartnerships and Collaborations: Collaboration between biofertilizer companies, research institutions, and agricultural organizations can accelerate innovation, product development, and market penetration. Strategic partnerships enable companies to access complementary technologies, expertise, and distribution networks, enhancing their competitive advantage in the market.\r\n\r\nChallenges:\r\n\r\nLimited Awareness and Education: Despite the growing interest in biofertilizers, there remains a lack of awareness and understanding among farmers about their benefits, application methods, and efficacy. Education and outreach efforts are needed to promote the adoption of biofertilizers and address misconceptions or skepticism among farmers.\r\n\r\nQuality Control and Standardization: Ensuring the quality, consistency, and efficacy of biofertilizer products can be challenging due to variability in microbial formulations, production processes, and environmental conditions. Standardization of manufacturing practices, quality control measures, and certification standards is essential to maintain product integrity and customer confidence.\r\n\r\nMarket Competition and Pricing Pressures: The biofertilizer market faces competition from conventional fertilizers, organic amendments, and other soil health products. Price competitiveness, economies of scale, and perceived performance differences can influence purchasing decisions and market dynamics, posing challenges for smaller biofertilizer companies.\r\n\r\nRegulatory Hurdles and Certification Requirements: Regulatory requirements for biofertilizer registration, labeling, and efficacy testing vary across jurisdictions, creating barriers to market entry and expansion. Compliance with regulatory standards, certification processes, and product claims adds complexity and costs to biofertilizer development and commercialization.\r\n\r\nIn summary, the biofertilizer market presents significant opportunities for sustainable agriculture practices, innovation, and market growth. Addressing challenges related to awareness, quality assurance, market competition, and regulatory compliance is essential for realizing the full potential of biofertilizers in enhancing soil health, crop productivity, and environmental sustainability.', '2024-03-03 10:27:00.931570', '2024-03-03 10:40:43.000000', 3),
(21, 'Breeder Seed Production and Quality Assurance: Best Practices and Guidelines', 'media/img/Article/breeder_1.jpg', 'Breeder seed production and quality assurance are critical aspects of seed supply systems, ensuring the availability of high-quality planting material for crop improvement programs and commercial seed production. Here are some best practices and guidelines for breeder seed production and quality assurance:\r\n\r\nBreeder Seed Production:\r\n\r\nSelection of Parental Lines: Breeder seed production starts with the careful selection of superior parental lines with desired traits, such as high yield potential, disease resistance, and abiotic stress tolerance. Parental lines should be genetically pure and free from contaminants to maintain seed purity in subsequent generations.\r\n\r\nIsolation and Pollination: Breeder seed fields should be isolated from other crop varieties or species to prevent cross-pollination and maintain genetic purity. Isolation distances and isolation periods vary depending on the crop\'s pollination mechanism and breeding system. Controlled pollination techniques, such as hand pollination or bagging of flowers, may be employed to ensure controlled crosses and prevent unintended hybridization.\r\n\r\nField Management Practices: Proper agronomic practices, including soil preparation, irrigation, fertilization, and pest management, are essential for optimizing crop growth, seed yield, and quality. Field hygiene measures, such as rogueing out off-types, weeds, and volunteer plants, help maintain seed purity and uniformity within breeder seed lots.\r\n\r\nSeed Harvesting and Processing: Breeder seed should be harvested at the optimum stage of maturity to ensure maximum seed viability and vigor. Thorough cleaning, drying, and conditioning procedures are employed to remove impurities, reduce moisture content, and enhance seed quality. Special attention should be paid to post-harvest handling to minimize mechanical damage and seed deterioration during processing.\r\n\r\nSeed Certification and Documentation: Breeder seed production is subject to strict regulatory requirements and certification procedures to ensure genetic purity, varietal identity, and seed health. Detailed documentation, including field inspection reports, seed testing results, and production records, is maintained throughout the seed production cycle to facilitate quality assurance and regulatory compliance.\r\n\r\nQuality Assurance Measures:\r\n\r\nGenetic Purity Testing: Breeder seed lots undergo genetic purity testing to verify varietal identity and detect any genetic contaminants or off-types. Molecular markers, morphological traits, and biochemical characteristics may be used to assess genetic purity and confirm varietal integrity.\r\n\r\nSeed Health Testing: Breeder seed lots are subjected to seed health testing to detect the presence of seed-borne pathogens, pests, and other contaminants. Seed health tests, including germination tests, seedling vigour tests, and pathogen detection assays, are conducted to ensure seed health and minimize the risk of introducing seed-borne diseases into commercial seed production.\r\n\r\nPhysical and Physiological Quality Assessment: Breeder seed quality is evaluated based on physical attributes, such as seed size, shape, colour, and uniformity, as well as physiological parameters, including germination percentage, seedling vigour, and seedling emergence. Seed quality testing helps assess seed viability, vigour, and performance under field conditions.\r\n\r\nSeed Treatment and Storage: Breeder seed lots may be treated with fungicides, insecticides, or other seed treatments to protect against seed-borne pathogens and pests and prolong seed viability during storage. Proper seed storage conditions, including temperature, humidity, and air circulation, are essential for maintaining seed quality and longevity.\r\n\r\nTraceability and Quality Control: Rigorous quality control measures and traceability systems are implemented throughout the seed supply chain to track seed origin, production history, and quality attributes. Quality assurance protocols, standard operating procedures (SOPs), and internal audits ensure consistency, reliability, and compliance with quality standards and regulations.\r\n\r\nIn summary, breeder seed production and quality assurance rely on a combination of genetic, agronomic, and managerial practices to produce high-quality planting material for crop improvement programs and seed multiplication activities. By adhering to best practices and guidelines, breeders, seed producers, and regulatory authorities can ensure the integrity, purity, and performance of breeder seed lots, contributing to the development of improved crop varieties and sustainable agriculture systems.', '2024-03-03 10:41:42.206433', '2024-03-03 10:55:15.000000', 2),
(22, 'Role of Breeder Seeds in Sustainable Agriculture and Food Security', 'media/img/Article/breeder_2.webp', 'Breeder seeds play a pivotal role in sustainable agriculture and food security by serving as the foundation for crop improvement programs, the development of high-yielding and resilient crop varieties, and the production of quality planting material for farmers. Here\'s how breeder seeds contribute to sustainable agriculture and food security:\r\n\r\nGenetic Diversity and Adaptation: Breeder seeds represent a diverse gene pool encompassing a wide range of genetic traits, including disease resistance, abiotic stress tolerance, and yield potential. Breeders utilize this genetic diversity to develop crop varieties adapted to different agroecological conditions, soil types, and climate regimes, ensuring agricultural resilience and stability in the face of environmental variability and climate change.\r\n\r\nCrop Improvement and Innovation: Breeder seeds serve as the starting point for crop improvement programs aimed at enhancing agronomic traits, nutritional quality, and market attributes of crops. Breeders employ advanced breeding techniques, such as conventional breeding, marker-assisted selection, and genetic engineering, to introgress desirable traits into elite breeding lines, leading to the development of improved varieties with higher yields, better nutritional profiles, and enhanced resistance to biotic and abiotic stresses.\r\n\r\nIncreased Crop Productivity and Yield Stability: Improved crop varieties derived from breeder seeds exhibit higher yield potential, improved crop performance, and greater yield stability under diverse growing conditions. These varieties contribute to increased crop productivity, yield security, and income generation for farmers, thereby enhancing food availability, access, and affordability for rural communities and urban populations.\r\n\r\nDisease and Pest Management: Breeder seeds play a critical role in addressing crop diseases and pests by incorporating genetic resistance or tolerance traits into crop varieties. By developing resistant cultivars, breeders help mitigate yield losses caused by fungal, bacterial, viral, and insect pests, reducing the reliance on chemical pesticides and minimizing environmental risks associated with pesticide use.\r\n\r\nAbiotic Stress Tolerance: Breeder seeds contribute to crop resilience against abiotic stresses, such as drought, salinity, heat, and cold, by selecting for genetic traits conferring tolerance or adaptation to these stressors. Improved crop varieties with enhanced stress tolerance enable farmers to sustain crop production in marginal lands, water-limited environments, and climatically challenging regions, contributing to agricultural sustainability and food security.\r\n\r\nResource Use Efficiency: Breeder seeds support sustainable agricultural practices by enhancing resource use efficiency, including water use efficiency, nutrient use efficiency, and energy use efficiency. Improved crop varieties with optimized canopy architecture, root morphology, and physiological traits require fewer inputs, such as water, fertilizers, and pesticides, while maintaining high yields and minimizing environmental impacts.\r\n\r\nSeed Multiplication and Dissemination: Breeder seeds serve as the primary source of planting material for commercial seed production, seed multiplication, and dissemination to farmers. Certified seed producers multiply breeder seeds through controlled seed production processes, ensuring seed quality, genetic purity, and varietal identity, and distribute certified seeds to farmers through formal seed systems, seed cooperatives, and agricultural extension services.\r\n\r\nIn summary, breeder seeds are indispensable for sustainable agriculture and food security, providing the genetic foundation for crop improvement, innovation, and resilience. By developing improved crop varieties with enhanced productivity, stress tolerance, and quality attributes, breeders contribute to the sustainable intensification of agriculture, the adaptation of farming systems to climate change, and the achievement of global food security goals.', '2024-03-03 10:42:40.304832', '2024-03-03 10:56:23.000000', 2),
(23, 'Nucleus Seed Production: Concepts, Practices, and Challenges', 'media/img/Article/nucleus_1.jpg', 'Nucleus seed production plays a critical role in seed multiplication systems, serving as the primary source of genetically pure and high-quality planting material for commercial seed production and distribution. Here\'s an overview of the concepts, practices, and challenges associated with nucleus seed production:\r\n\r\nConcepts:\r\n\r\nFoundation of Seed Multiplication: Nucleus seed production is the initial stage in the seed multiplication process, where breeder seeds or pure breeding lines are produced under controlled conditions to maintain genetic purity, varietal identity, and seed quality.\r\n\r\nGenetic Purity and Identity: Nucleus seed production ensures the genetic purity and identity of seed lots by employing rigorous isolation, pollination control, and quality assurance measures to prevent cross-pollination, genetic contamination, and varietal mixture.\r\n\r\nFoundation for Seed Certification: Nucleus seed lots serve as the foundation for seed certification programs, providing the genetic basis for subsequent generations of certified seeds produced through multiplication and distribution channels.\r\n\r\nQuality Assurance and Traceability: Nucleus seed production is subject to stringent quality assurance protocols, including field inspections, seed testing, and documentation, to ensure compliance with regulatory standards, varietal integrity, and seed health requirements. Traceability systems track seed origin, production history, and quality attributes throughout the seed supply chain.\r\n\r\nPractices:\r\n\r\nSelection of Parental Lines: Nucleus seed production begins with the careful selection of superior parental lines or breeding materials with desired traits, such as high yield potential, disease resistance, and agronomic performance. Parental lines should be genetically pure, homozygous, and phenotypically uniform to maintain seed purity and varietal integrity.\r\n\r\nIsolation and Pollination Control: Nucleus seed fields are isolated from other crop varieties or species to prevent cross-pollination and genetic contamination. Isolation distances, physical barriers, and flowering synchrony are managed to ensure controlled pollination and genetic integrity within nucleus seed lots.\r\n\r\nField Management Practices: Proper agronomic practices, including soil preparation, irrigation, fertilization, and pest management, are essential for optimizing crop growth, seed yield, and quality in nucleus seed production. Field hygiene measures, such as rogueing out off-types and weeds, help maintain seed purity and uniformity within nucleus seed lots.\r\n\r\nSeed Harvesting and Processing: Nucleus seed lots are harvested at the optimum stage of maturity to ensure maximum seed viability, vigour, and genetic integrity. Thorough cleaning, drying, and conditioning procedures are employed to remove impurities, reduce moisture content, and enhance seed quality before storage or further processing.\r\n\r\nSeed Certification and Documentation: Nucleus seed production is accompanied by detailed documentation, including field inspection reports, seed testing results, and production records, to facilitate quality assurance, regulatory compliance, and varietal traceability. Seed certification agencies or authorities oversee the certification process and issue certificates attesting to the quality and purity of nucleus seed lots.\r\n\r\nChallenges:\r\n\r\nGenetic Drift and Contamination: Maintaining genetic purity and identity in nucleus seed production can be challenging due to the risk of genetic drift, gene flow, and accidental contamination from neighboring fields or pollen sources. Strict isolation measures, buffer zones, and monitoring protocols are necessary to minimize the risk of genetic contamination and varietal mixture.\r\n\r\nDisease and Pest Management: Nucleus seed production is susceptible to crop diseases, pests, and abiotic stresses that can affect seed yield, quality, and genetic integrity. Integrated pest management (IPM) strategies, disease resistance breeding, and cultural practices are employed to manage pest and disease pressures and maintain seed health in nucleus seed lots.\r\n\r\nSeed Quality Assurance: Ensuring seed quality and purity in nucleus seed production requires comprehensive quality assurance measures, including seed testing, germination testing, and seed health analysis. Quality control protocols, standard operating procedures (SOPs), and internal audits are essential for maintaining seed quality standards and regulatory compliance.\r\n\r\nRegulatory Compliance: Nucleus seed production is subject to regulatory requirements and certification standards imposed by national seed laws, plant quarantine regulations, and seed certification agencies. Compliance with regulatory frameworks, documentation requirements, and varietal release procedures is necessary to market nucleus seed lots for commercial seed production and distribution.\r\n\r\nCapacity and Infrastructure: Establishing and maintaining nucleus seed production facilities, including land, equipment, and skilled personnel, requires substantial investment and infrastructure development. Limited capacity, technical expertise, and resources may pose challenges for seed companies, research institutions, and public agencies involved in nucleus seed production programs.\r\n\r\nIn summary, nucleus seed production plays a crucial role in seed multiplication systems, ensuring the genetic purity, varietal identity, and quality of planting material for commercial seed production and distribution. By adhering to best practices, implementing quality assurance measures, and addressing key challenges, nucleus seed producers can contribute to the development of high-quality seed varieties, sustainable agriculture, and food security goals.', '2024-03-03 10:44:33.980549', '2024-03-03 10:58:15.000000', 2),
(24, 'Role of Foundation Seeds in Sustainable Agriculture and Food Security', 'media/img/Article/foundation_1.jpg', 'Foundation seeds play a crucial role in sustainable agriculture and food security by serving as the starting point for seed multiplication systems, providing the genetic foundation for improved crop varieties, and ensuring the availability of high-quality planting material for farmers. Here\'s how foundation seeds contribute to sustainable agriculture and food security:\r\n\r\nGenetic Diversity and Crop Improvement: Foundation seeds represent a diverse gene pool comprising elite breeding lines or pure varieties with desirable traits, such as high yield potential, disease resistance, and environmental resilience. By providing the genetic basis for crop improvement programs, foundation seeds facilitate the development of improved varieties adapted to local growing conditions, climate challenges, and agronomic constraints.\r\n\r\nResilience to Climate Change: Foundation seeds contribute to agricultural resilience and adaptation to climate change by incorporating genetic traits conferring tolerance or resistance to abiotic stresses, such as drought, heat, salinity, and flooding. Improved crop varieties derived from foundation seeds exhibit enhanced stress tolerance, resource use efficiency, and yield stability, enabling farmers to sustain crop production under changing climatic conditions.\r\n\r\nIncreased Crop Productivity and Yield Stability: Improved crop varieties produced from foundation seeds demonstrate higher yield potential, improved agronomic performance, and greater yield stability under diverse growing conditions. By enhancing crop productivity, yield security, and income generation for farmers, foundation seeds contribute to food availability, access, and affordability for rural communities and urban populations.\r\n\r\nDisease and Pest Management: Foundation seeds play a critical role in disease and pest management by incorporating genetic resistance or tolerance traits into crop varieties. Disease-resistant varieties derived from foundation seeds help mitigate yield losses caused by fungal, bacterial, viral, and insect pests, reducing the reliance on chemical pesticides and minimizing environmental risks associated with pesticide use.\r\n\r\nSoil Health and Environmental Sustainability: Foundation seeds support sustainable agriculture practices by promoting soil health, biodiversity conservation, and ecosystem resilience. Improved crop varieties with optimized root systems, nutrient uptake efficiency, and agronomic traits enhance soil fertility, water retention, and carbon sequestration, contributing to soil conservation, erosion control, and environmental stewardship.\r\n\r\nSeed Multiplication and Dissemination: Foundation seeds serve as the primary source of planting material for commercial seed production, seed multiplication, and dissemination to farmers. Certified seed producers multiply foundation seeds through controlled seed production processes, ensuring seed quality, genetic purity, and varietal identity, and distribute certified seeds to farmers through formal seed systems, seed cooperatives, and agricultural extension services.\r\n\r\nEmpowerment of Farmers: Access to high-quality foundation seeds empowers farmers to adopt improved crop varieties, modern farming practices, and sustainable agricultural technologies, leading to increased farm productivity, income generation, and livelihood resilience. Foundation seed programs, farmer training initiatives, and seed subsidy schemes enable smallholder farmers to access quality seeds, technical support, and market opportunities, thereby enhancing their capacity to contribute to food security and poverty alleviation.\r\n\r\nIn summary, foundation seeds are essential for sustainable agriculture and food security, providing the genetic basis for crop improvement, innovation, and resilience. By developing improved crop varieties with enhanced productivity, stress tolerance, and quality attributes, foundation seed producers, researchers, and agricultural stakeholders contribute to the development of resilient, productive, and environmentally sustainable food systems that meet the challenges of feeding a growing global population.', '2024-03-03 10:49:42.994292', '2024-03-03 11:03:11.000000', 2),
(25, 'Garden Lighting: Illuminating Outdoor Spaces for Safety and Aesthetics', 'media/img/Article/accessoiries_1.jpg', 'Garden lighting is a key element in outdoor design, offering both functional benefits for safety and enhancing the aesthetic appeal of outdoor spaces. Here\'s how garden lighting contributes to safety and aesthetics:\r\n\r\nSafety:\r\n\r\nPathway Lighting: Illuminating pathways and walkways with low-level lights or path lights helps guide visitors safely through the garden, especially at night. This reduces the risk of tripping or stumbling over uneven surfaces or obstacles.\r\n\r\nStair Lighting: Lights installed along staircases or steps improve visibility and prevent accidents by clearly defining each step\'s edge. This is particularly important in gardens with elevation changes or terraced areas.\r\n\r\nEntrance Lighting: Lighting at entrances, gates, or doorways ensures safe entry and exit from the garden area. It also enhances security by illuminating potential hiding spots and deterring intruders.\r\n\r\nPool and Water Feature Lighting: If the garden includes a pool or water feature, proper lighting is essential for safety, especially in the evenings. Underwater lights or perimeter lighting around the pool help prevent accidents and make these features more visible.\r\n\r\nMotion-Activated Lights: Installing motion-activated lights around the perimeter of the garden or near entry points adds an extra layer of security by automatically turning on when movement is detected, deterring potential intruders.\r\n\r\nAesthetics:\r\n\r\nAccent Lighting: Garden lighting can highlight architectural features, trees, or sculptures, adding depth and visual interest to the landscape. Well-placed spotlights or uplights can create dramatic effects and draw attention to focal points in the garden.\r\n\r\nAmbient Lighting: Soft, ambient lighting from string lights, lanterns, or wall-mounted fixtures creates a warm and inviting atmosphere in outdoor living spaces. It sets the mood for relaxation or socializing and enhances the overall ambiance of the garden.\r\n\r\nPlant and Flower Lighting: Lighting up plants, flowers, or garden beds adds beauty and charm to the garden, especially at night. Uplights or downlights can accentuate the texture and colors of foliage, creating a magical effect.\r\n\r\nArchitectural Lighting: Illuminating the architectural features of the house or surrounding structures extends the visual appeal of the garden into the night. This can include facade lighting, wall washers, or grazing lights to highlight textures and patterns.\r\n\r\nColor Changing Lights: LED lights that change colors or have adjustable brightness levels allow for creative lighting effects and mood customization. They can create a vibrant atmosphere for outdoor parties or events.\r\n\r\nIn summary, garden lighting serves both practical and aesthetic purposes, enhancing safety while creating a visually stunning outdoor environment. By carefully planning the placement and type of lighting fixtures, homeowners can transform their gardens into inviting and enchanting spaces that can be enjoyed day and night.', '2024-03-03 10:56:37.332993', '2024-03-03 11:10:20.000000', 4);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add customeruser', 10, 'add_customeruser'),
(38, 'Can change customeruser', 10, 'change_customeruser'),
(39, 'Can delete customeruser', 10, 'delete_customeruser'),
(40, 'Can view customeruser', 10, 'view_customeruser'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order item', 12, 'add_orderitem'),
(46, 'Can change order item', 12, 'change_orderitem'),
(47, 'Can delete order item', 12, 'delete_orderitem'),
(48, 'Can view order item', 12, 'view_orderitem'),
(49, 'Can add liked product', 13, 'add_likedproduct'),
(50, 'Can change liked product', 13, 'change_likedproduct'),
(51, 'Can delete liked product', 13, 'delete_likedproduct'),
(52, 'Can view liked product', 13, 'view_likedproduct'),
(53, 'Can add cart_item', 14, 'add_cart_item'),
(54, 'Can change cart_item', 14, 'change_cart_item'),
(55, 'Can delete cart_item', 14, 'delete_cart_item'),
(56, 'Can view cart_item', 14, 'view_cart_item'),
(57, 'Can add shipping address', 15, 'add_shippingaddress'),
(58, 'Can change shipping address', 15, 'change_shippingaddress'),
(59, 'Can delete shipping address', 15, 'delete_shippingaddress'),
(60, 'Can view shipping address', 15, 'view_shippingaddress'),
(61, 'Can add order bill', 16, 'add_orderbill'),
(62, 'Can change order bill', 16, 'change_orderbill'),
(63, 'Can delete order bill', 16, 'delete_orderbill'),
(64, 'Can view order bill', 16, 'view_orderbill'),
(65, 'Can add care tips', 17, 'add_caretips'),
(66, 'Can change care tips', 17, 'change_caretips'),
(67, 'Can delete care tips', 17, 'delete_caretips'),
(68, 'Can view care tips', 17, 'view_caretips'),
(69, 'Can add product details', 18, 'add_productdetails'),
(70, 'Can change product details', 18, 'change_productdetails'),
(71, 'Can delete product details', 18, 'delete_productdetails'),
(72, 'Can view product details', 18, 'view_productdetails'),
(73, 'Can add review', 19, 'add_review'),
(74, 'Can change review', 19, 'change_review'),
(75, 'Can delete review', 19, 'delete_review'),
(76, 'Can view review', 19, 'view_review'),
(77, 'Can add product image', 20, 'add_productimage'),
(78, 'Can change product image', 20, 'change_productimage'),
(79, 'Can delete product image', 20, 'delete_productimage'),
(80, 'Can view product image', 20, 'view_productimage'),
(81, 'Can add sub category', 21, 'add_subcategory'),
(82, 'Can change sub category', 21, 'change_subcategory'),
(83, 'Can delete sub category', 21, 'delete_subcategory'),
(84, 'Can view sub category', 21, 'view_subcategory'),
(85, 'Can add article', 22, 'add_article'),
(86, 'Can change article', 22, 'change_article'),
(87, 'Can delete article', 22, 'delete_article'),
(88, 'Can view article', 22, 'view_article'),
(89, 'Can add gardner booking', 23, 'add_gardnerbooking'),
(90, 'Can change gardner booking', 23, 'change_gardnerbooking'),
(91, 'Can delete gardner booking', 23, 'delete_gardnerbooking'),
(92, 'Can view gardner booking', 23, 'view_gardnerbooking'),
(93, 'Can add service', 24, 'add_service'),
(94, 'Can change service', 24, 'change_service'),
(95, 'Can delete service', 24, 'delete_service'),
(96, 'Can view service', 24, 'view_service'),
(97, 'Can add sub service', 25, 'add_subservice'),
(98, 'Can change sub service', 25, 'change_subservice'),
(99, 'Can delete sub service', 25, 'delete_subservice'),
(100, 'Can view sub service', 25, 'view_subservice'),
(101, 'Can add gardner', 26, 'add_gardner'),
(102, 'Can change gardner', 26, 'change_gardner'),
(103, 'Can delete gardner', 26, 'delete_gardner'),
(104, 'Can view gardner', 26, 'view_gardner'),
(105, 'Can add payment', 27, 'add_payment'),
(106, 'Can change payment', 27, 'change_payment'),
(107, 'Can delete payment', 27, 'delete_payment'),
(108, 'Can view payment', 27, 'view_payment'),
(109, 'Can add booking', 28, 'add_booking'),
(110, 'Can change booking', 28, 'change_booking'),
(111, 'Can delete booking', 28, 'delete_booking'),
(112, 'Can view booking', 28, 'view_booking'),
(113, 'Can add city', 29, 'add_city'),
(114, 'Can change city', 29, 'change_city'),
(115, 'Can delete city', 29, 'delete_city'),
(116, 'Can view city', 29, 'view_city'),
(117, 'Can add state', 30, 'add_state'),
(118, 'Can change state', 30, 'change_state'),
(119, 'Can delete state', 30, 'delete_state'),
(120, 'Can view state', 30, 'view_state'),
(121, 'Can add pin_ code', 31, 'add_pin_code'),
(122, 'Can change pin_ code', 31, 'change_pin_code'),
(123, 'Can delete pin_ code', 31, 'delete_pin_code'),
(124, 'Can view pin_ code', 31, 'view_pin_code'),
(125, 'Can add dashboard stats', 32, 'add_dashboardstats'),
(126, 'Can change dashboard stats', 32, 'change_dashboardstats'),
(127, 'Can delete dashboard stats', 32, 'delete_dashboardstats'),
(128, 'Can view dashboard stats', 32, 'view_dashboardstats'),
(129, 'Can add dashboard stats criteria', 33, 'add_dashboardstatscriteria'),
(130, 'Can change dashboard stats criteria', 33, 'change_dashboardstatscriteria'),
(131, 'Can delete dashboard stats criteria', 33, 'delete_dashboardstatscriteria'),
(132, 'Can view dashboard stats criteria', 33, 'view_dashboardstatscriteria'),
(133, 'Can add criteria to stats m2m', 34, 'add_criteriatostatsm2m'),
(134, 'Can change criteria to stats m2m', 34, 'change_criteriatostatsm2m'),
(135, 'Can delete criteria to stats m2m', 34, 'delete_criteriatostatsm2m'),
(136, 'Can view criteria to stats m2m', 34, 'view_criteriatostatsm2m'),
(137, 'Can add cached value', 35, 'add_cachedvalue'),
(138, 'Can change cached value', 35, 'change_cachedvalue'),
(139, 'Can delete cached value', 35, 'delete_cachedvalue'),
(140, 'Can view cached value', 35, 'view_cachedvalue');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$sumzojm7qTm0wVvALHxX11$p4TFk9lO7iRWNqMJ1AX8jdzfx3f0hKRNBa+7uyCyDyU=', '2024-04-24 04:14:41.009670', 1, 'manan', 'manan', 'korpe', 'manankorpe2@gmail.com', 1, 1, '2024-03-03 07:48:55.979924'),
(7, 'pbkdf2_sha256$720000$DQgEAUTLrKvrzfZuxOvWpG$5LKdxmSnoBd4SitNub5O7RFxe8rFKJWXtgStT38o8VE=', '2024-04-18 13:47:36.105899', 0, 'mp', 'mayank', 'panchal', 'manankorpe@gmail.com', 0, 1, '2024-04-18 13:47:06.335744'),
(8, 'pbkdf2_sha256$720000$stnId4OptAZSgEMTiVcTg2$7EPacB0KeFLdp+0sLRbT9vBvcJRjwGpq3MeEiGaAUwI=', '2024-04-24 04:11:58.623092', 0, 'veer', 'virendra', 'panwar', 'thakortakshil@gmail.com', 0, 1, '2024-04-24 03:59:01.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_stats`
--

CREATE TABLE `dashboard_stats` (
  `id` bigint(20) NOT NULL,
  `graph_key` varchar(90) NOT NULL,
  `graph_title` varchar(90) NOT NULL,
  `model_app_name` varchar(90) NOT NULL,
  `model_name` varchar(90) NOT NULL,
  `date_field_name` varchar(90) NOT NULL,
  `operation_field_name` varchar(90) DEFAULT NULL,
  `type_operation_field_name` varchar(90) DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `user_field_name` varchar(90) DEFAULT NULL,
  `default_chart_type` varchar(90) NOT NULL,
  `default_time_period` int(10) UNSIGNED NOT NULL CHECK (`default_time_period` >= 0),
  `default_time_scale` varchar(90) NOT NULL,
  `y_axis_format` varchar(90) DEFAULT NULL,
  `distinct` tinyint(1) NOT NULL,
  `default_multiseries_criteria_id` bigint(20) DEFAULT NULL,
  `show_to_users` tinyint(1) NOT NULL,
  `allowed_chart_types` varchar(1000) DEFAULT NULL,
  `allowed_time_scales` varchar(1000) NOT NULL,
  `allowed_type_operation_field_name` varchar(1000) DEFAULT NULL,
  `cache_values` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dash_stats_criteria`
--

CREATE TABLE `dash_stats_criteria` (
  `id` bigint(20) NOT NULL,
  `criteria_name` varchar(90) NOT NULL,
  `criteria_fix_mapping` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`criteria_fix_mapping`)),
  `dynamic_criteria_field_name` varchar(90) DEFAULT NULL,
  `criteria_dynamic_mapping` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`criteria_dynamic_mapping`)),
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-03-03 07:52:40.972241', '1', 'Plants', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-03-03 07:54:29.308087', '2', 'Seeds', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-03-03 07:54:42.932876', '3', 'Fertilizers', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-03-03 07:55:20.619772', '4', 'Accessories', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-03-03 07:55:30.154428', '4', 'Accessories', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 7, 1),
(6, '2024-03-03 07:55:30.157216', '3', 'Fertilizers', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 7, 1),
(7, '2024-03-03 07:55:30.160692', '2', 'Seeds', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 7, 1),
(8, '2024-03-03 07:56:03.323357', '1', 'SubCategory object (1)', 1, '[{\"added\": {}}]', 21, 1),
(9, '2024-03-03 07:58:53.646588', '2', 'SubCategory object (2)', 1, '[{\"added\": {}}]', 21, 1),
(10, '2024-03-03 07:59:11.850038', '3', 'SubCategory object (3)', 1, '[{\"added\": {}}]', 21, 1),
(11, '2024-03-03 07:59:27.311475', '4', 'SubCategory object (4)', 1, '[{\"added\": {}}]', 21, 1),
(12, '2024-03-03 07:59:46.052033', '5', 'SubCategory object (5)', 1, '[{\"added\": {}}]', 21, 1),
(13, '2024-03-03 08:00:13.714996', '5', 'SubCategory object (5)', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 21, 1),
(14, '2024-03-03 08:00:13.714996', '4', 'SubCategory object (4)', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 21, 1),
(15, '2024-03-03 08:00:13.723221', '3', 'SubCategory object (3)', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 21, 1),
(16, '2024-03-03 08:00:13.724788', '2', 'SubCategory object (2)', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 21, 1),
(17, '2024-03-03 08:00:13.727223', '1', 'SubCategory object (1)', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 21, 1),
(18, '2024-03-03 08:00:56.814606', '6', 'SubCategory object (6)', 1, '[{\"added\": {}}]', 21, 1),
(19, '2024-03-03 08:01:20.785992', '7', 'SubCategory object (7)', 1, '[{\"added\": {}}]', 21, 1),
(20, '2024-03-03 08:01:44.135590', '8', 'Nucleus Seeds', 1, '[{\"added\": {}}]', 21, 1),
(21, '2024-03-03 08:02:09.105731', '9', 'Foundation Seeds', 1, '[{\"added\": {}}]', 21, 1),
(22, '2024-03-03 08:02:48.018275', '10', 'Nitrogen Fertilizer', 1, '[{\"added\": {}}]', 21, 1),
(23, '2024-03-03 08:03:33.181902', '11', 'Phosephours  Fertilizer', 1, '[{\"added\": {}}]', 21, 1),
(24, '2024-03-03 08:03:57.857265', '12', 'Potassium  Fertilizer', 1, '[{\"added\": {}}]', 21, 1),
(25, '2024-03-03 08:04:20.281603', '13', 'Bio Fertilizer', 1, '[{\"added\": {}}]', 21, 1),
(26, '2024-03-03 08:04:47.122469', '14', 'Gardening Tools', 1, '[{\"added\": {}}]', 21, 1),
(27, '2024-03-03 08:05:23.066779', '15', 'Miniature Garden Toys', 1, '[{\"added\": {}}]', 21, 1),
(28, '2024-03-03 08:05:53.170992', '16', 'Gardening Accessories', 1, '[{\"added\": {}}]', 21, 1),
(29, '2024-03-03 08:06:11.702991', '11', 'Phosephours Fertilizer', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 21, 1),
(30, '2024-03-03 08:07:47.680924', '11', 'Phosephours Fertilizer', 2, '[]', 21, 1),
(31, '2024-03-03 08:07:56.056007', '11', 'Phosephours Fertilizer', 2, '[]', 21, 1),
(32, '2024-03-03 08:08:03.325688', '10', 'Nitrogen Fertilizer', 2, '[]', 21, 1),
(33, '2024-03-03 08:08:12.952262', '13', 'Bio Fertilizer', 2, '[]', 21, 1),
(34, '2024-03-03 08:08:23.429379', '8', 'Nucleus Seeds', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 21, 1),
(35, '2024-03-03 08:08:23.434895', '7', 'Certified Seeds', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 21, 1),
(36, '2024-03-03 08:08:23.446159', '6', 'Breeder Seeds', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 21, 1),
(37, '2024-03-03 08:14:34.831768', '1', 'Emerald Elegance', 1, '[{\"added\": {}}]', 8, 1),
(38, '2024-03-03 08:15:16.823650', '1', 'Article object (1)', 1, '[{\"added\": {}}]', 22, 1),
(39, '2024-03-03 08:22:24.036929', '1', 'Emerald Elegance', 3, '', 8, 1),
(40, '2024-03-03 08:24:19.535800', '1', 'Article object (1)', 3, '', 22, 1),
(41, '2024-03-03 08:29:11.314831', '2', 'Emerald Elegance', 1, '[{\"added\": {}}]', 8, 1),
(42, '2024-03-03 08:30:57.620517', '2', 'Article object (2)', 1, '[{\"added\": {}}]', 22, 1),
(43, '2024-03-03 08:33:50.162639', '3', 'Article object (3)', 1, '[{\"added\": {}}]', 22, 1),
(44, '2024-03-03 08:34:59.779625', '1', 'Emerald Elegance', 1, '[{\"added\": {}}]', 18, 1),
(45, '2024-03-03 08:39:03.518835', '4', 'Article object (4)', 1, '[{\"added\": {}}]', 22, 1),
(46, '2024-03-03 08:45:53.690722', '5', 'Article object (5)', 1, '[{\"added\": {}}]', 22, 1),
(47, '2024-03-03 08:49:30.927801', '1', 'CareTips object (1)', 1, '[{\"added\": {}}]', 17, 1),
(48, '2024-03-03 08:50:28.686395', '3', 'Article object (3)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 22, 1),
(49, '2024-03-03 08:50:28.691030', '2', 'Article object (2)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 22, 1),
(50, '2024-03-03 08:52:33.079530', '3', 'Peaceful Palms', 1, '[{\"added\": {}}]', 8, 1),
(51, '2024-03-03 08:54:55.443332', '2', 'Peaceful Palms', 1, '[{\"added\": {}}]', 18, 1),
(52, '2024-03-03 09:01:30.372670', '2', 'CareTips object (2)', 1, '[{\"added\": {}}]', 17, 1),
(53, '2024-03-03 09:03:11.632003', '6', 'Article object (6)', 1, '[{\"added\": {}}]', 22, 1),
(54, '2024-03-03 09:04:41.251162', '4', 'Velvet Vibes', 1, '[{\"added\": {}}]', 8, 1),
(55, '2024-03-03 09:10:25.823075', '7', 'Article object (7)', 1, '[{\"added\": {}}]', 22, 1),
(56, '2024-03-03 09:13:49.772509', '8', 'Article object (8)', 1, '[{\"added\": {}}]', 22, 1),
(57, '2024-03-03 09:15:25.823278', '3', 'Velvet Vibes', 1, '[{\"added\": {}}]', 18, 1),
(58, '2024-03-03 09:17:32.082641', '3', 'Velvet Vibes', 1, '[{\"added\": {}}]', 17, 1),
(59, '2024-03-03 09:18:59.536569', '1', 'Emerald Elegance', 2, '[{\"changed\": {\"fields\": [\"Watering\", \"Light\", \"Soil\", \"Temperature\", \"Seasonal Care\", \"Care Instructions:\"]}}]', 17, 1),
(60, '2024-03-03 09:20:27.218307', '9', 'Article object (9)', 1, '[{\"added\": {}}]', 22, 1),
(61, '2024-03-03 09:32:43.464591', '2', 'Peaceful Palms', 2, '[{\"changed\": {\"fields\": [\"Watering\", \"Light\", \"Soil\", \"Fertilizing\", \"Temperature\", \"Seasonal Care\", \"Care Instructions:\"]}}]', 17, 1),
(62, '2024-03-03 09:34:49.161389', '5', 'Golden Pothos', 1, '[{\"added\": {}}]', 8, 1),
(63, '2024-03-03 09:35:55.621463', '10', 'Article object (10)', 1, '[{\"added\": {}}]', 22, 1),
(64, '2024-03-03 09:36:30.797051', '4', 'Golden Pothos', 1, '[{\"added\": {}}]', 18, 1),
(65, '2024-03-03 09:39:54.032996', '11', 'Article object (11)', 1, '[{\"added\": {}}]', 22, 1),
(66, '2024-03-03 09:40:12.924711', '4', 'Golden Pothos', 1, '[{\"added\": {}}]', 17, 1),
(67, '2024-03-03 09:41:26.763985', '6', 'Fiddle Leaf Fig', 1, '[{\"added\": {}}]', 8, 1),
(68, '2024-03-03 09:42:38.831302', '5', 'Fiddle Leaf Fig', 1, '[{\"added\": {}}]', 18, 1),
(69, '2024-03-03 09:42:51.547970', '12', 'Article object (12)', 1, '[{\"added\": {}}]', 22, 1),
(70, '2024-03-03 09:48:48.580929', '12', 'Article object (12)', 2, '[{\"changed\": {\"fields\": [\"Related category\"]}}]', 22, 1),
(71, '2024-03-03 09:48:48.584779', '11', 'Article object (11)', 2, '[{\"changed\": {\"fields\": [\"Related category\"]}}]', 22, 1),
(72, '2024-03-03 09:48:48.587656', '10', 'Article object (10)', 2, '[{\"changed\": {\"fields\": [\"Related category\"]}}]', 22, 1),
(73, '2024-03-03 09:48:48.592478', '9', 'Article object (9)', 2, '[{\"changed\": {\"fields\": [\"Related category\"]}}]', 22, 1),
(74, '2024-03-03 09:48:48.594957', '8', 'Article object (8)', 2, '[{\"changed\": {\"fields\": [\"Related category\"]}}]', 22, 1),
(75, '2024-03-03 09:48:48.596477', '7', 'Article object (7)', 2, '[{\"changed\": {\"fields\": [\"Related category\"]}}]', 22, 1),
(76, '2024-03-03 09:48:48.598869', '6', 'Article object (6)', 2, '[{\"changed\": {\"fields\": [\"Related category\"]}}]', 22, 1),
(77, '2024-03-03 09:48:48.601104', '5', 'Article object (5)', 2, '[{\"changed\": {\"fields\": [\"Related category\"]}}]', 22, 1),
(78, '2024-03-03 09:48:48.603336', '4', 'Article object (4)', 2, '[{\"changed\": {\"fields\": [\"Related category\"]}}]', 22, 1),
(79, '2024-03-03 09:48:48.607232', '3', 'Article object (3)', 2, '[{\"changed\": {\"fields\": [\"Related category\"]}}]', 22, 1),
(80, '2024-03-03 09:48:48.610399', '2', 'Article object (2)', 2, '[{\"changed\": {\"fields\": [\"Related category\"]}}]', 22, 1),
(81, '2024-03-03 09:55:12.285425', '5', 'Fiddle Leaf Fig', 1, '[{\"added\": {}}]', 17, 1),
(82, '2024-03-03 10:14:53.691447', '13', 'Article object (13)', 1, '[{\"added\": {}}]', 22, 1),
(83, '2024-03-03 10:15:55.021352', '5', 'Golden Pothos', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 1),
(84, '2024-03-03 10:15:55.024539', '4', 'Velvet Vibes', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 1),
(85, '2024-03-03 10:17:30.851128', '14', 'Article object (14)', 1, '[{\"added\": {}}]', 22, 1),
(86, '2024-03-03 10:19:29.621511', '15', 'Article object (15)', 1, '[{\"added\": {}}]', 22, 1),
(87, '2024-03-03 10:20:28.280724', '16', 'Article object (16)', 1, '[{\"added\": {}}]', 22, 1),
(88, '2024-03-03 10:22:41.253102', '17', 'Article object (17)', 1, '[{\"added\": {}}]', 22, 1),
(89, '2024-03-03 10:24:04.390913', '18', 'Article object (18)', 1, '[{\"added\": {}}]', 22, 1),
(90, '2024-03-03 10:27:00.931570', '19', 'Article object (19)', 1, '[{\"added\": {}}]', 22, 1),
(91, '2024-03-03 10:28:10.010392', '7', 'Raindrop Delight', 1, '[{\"added\": {}}]', 8, 1),
(92, '2024-03-03 10:28:18.025727', '20', 'Article object (20)', 1, '[{\"added\": {}}]', 22, 1),
(93, '2024-03-03 10:29:54.491557', '20', 'Article object (20)', 3, '', 22, 1),
(94, '2024-03-03 10:31:23.510159', '7', 'Raindrop Delight', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(95, '2024-03-03 10:32:38.968316', '6', 'Raindrop Delight', 1, '[{\"added\": {}}]', 18, 1),
(96, '2024-03-03 10:34:50.454187', '6', 'Raindrop Delight', 1, '[{\"added\": {}}]', 17, 1),
(97, '2024-03-03 10:38:26.637731', '8', 'Misty Morning', 1, '[{\"added\": {}}]', 8, 1),
(98, '2024-03-03 10:41:07.202145', '7', 'Misty Morning', 1, '[{\"added\": {}}]', 18, 1),
(99, '2024-03-03 10:41:42.211931', '21', 'Article object (21)', 1, '[{\"added\": {}}]', 22, 1),
(100, '2024-03-03 10:42:40.312419', '22', 'Article object (22)', 1, '[{\"added\": {}}]', 22, 1),
(101, '2024-03-03 10:43:24.030250', '7', 'Misty Morning', 1, '[{\"added\": {}}]', 17, 1),
(102, '2024-03-03 10:44:33.991732', '23', 'Article object (23)', 1, '[{\"added\": {}}]', 22, 1),
(103, '2024-03-03 10:44:40.698815', '7', 'Misty Morning', 2, '[{\"changed\": {\"fields\": [\"Compatibility\"]}}]', 18, 1),
(104, '2024-03-03 10:45:13.495333', '1', 'Emerald Elegance', 2, '[{\"changed\": {\"fields\": [\"Weigth\"]}}]', 18, 1),
(105, '2024-03-03 10:45:20.025014', '2', 'Peaceful Palms', 2, '[{\"changed\": {\"fields\": [\"Weigth\"]}}]', 18, 1),
(106, '2024-03-03 10:45:30.882277', '3', 'Velvet Vibes', 2, '[{\"changed\": {\"fields\": [\"Weigth\"]}}]', 18, 1),
(107, '2024-03-03 10:45:49.009709', '5', 'Fiddle Leaf Fig', 2, '[{\"changed\": {\"fields\": [\"Weigth\"]}}]', 18, 1),
(108, '2024-03-03 10:49:43.000582', '24', 'Article object (24)', 1, '[{\"added\": {}}]', 22, 1),
(109, '2024-03-03 10:50:13.580447', '9', 'Monsoon Majesty', 1, '[{\"added\": {}}]', 8, 1),
(110, '2024-03-03 10:52:28.879903', '8', 'Monsoon Majesty', 1, '[{\"added\": {}}]', 18, 1),
(111, '2024-03-03 10:54:16.638143', '8', 'Monsoon Majesty', 1, '[{\"added\": {}}]', 17, 1),
(112, '2024-03-03 10:56:37.335027', '25', 'Article object (25)', 1, '[{\"added\": {}}]', 22, 1),
(113, '2024-03-03 10:58:38.311781', '1', 'Service object (1)', 1, '[{\"added\": {}}]', 24, 1),
(114, '2024-03-03 10:59:17.954133', '2', 'Service object (2)', 1, '[{\"added\": {}}]', 24, 1),
(115, '2024-03-03 10:59:28.443389', '3', 'Service object (3)', 1, '[{\"added\": {}}]', 24, 1),
(116, '2024-03-03 10:59:36.847826', '4', 'Service object (4)', 1, '[{\"added\": {}}]', 24, 1),
(117, '2024-03-03 10:59:46.622353', '5', 'Service object (5)', 1, '[{\"added\": {}}]', 24, 1),
(118, '2024-03-03 10:59:57.745890', '6', 'Service object (6)', 1, '[{\"added\": {}}]', 24, 1),
(119, '2024-03-03 11:00:13.718976', '4', 'Service object (4)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Is active\"]}}]', 24, 1),
(120, '2024-03-03 11:00:20.294273', '3', 'Service object (3)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 24, 1),
(121, '2024-03-03 11:00:25.817734', '2', 'Service object (2)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 24, 1),
(122, '2024-03-03 11:00:34.004673', '10', 'Torrential Beauty', 1, '[{\"added\": {}}]', 8, 1),
(123, '2024-03-03 11:01:52.627771', '9', 'Torrential Beauty', 1, '[{\"added\": {}}]', 18, 1),
(124, '2024-03-03 11:03:57.350451', '9', 'Torrential Beauty', 1, '[{\"added\": {}}]', 17, 1),
(125, '2024-03-03 11:13:21.468110', '11', 'Drizzle Dream', 1, '[{\"added\": {}}]', 8, 1),
(126, '2024-03-03 11:17:09.049829', '10', 'Drizzle Dream', 1, '[{\"added\": {}}]', 18, 1),
(127, '2024-03-03 11:17:35.631607', '11', 'Drizzle Dream', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(128, '2024-03-03 11:19:50.631869', '10', 'Drizzle Dream', 1, '[{\"added\": {}}]', 17, 1),
(129, '2024-03-03 11:21:10.498915', '7', 'Service object (7)', 1, '[{\"added\": {}}]', 24, 1),
(130, '2024-03-03 11:21:21.656277', '8', 'Service object (8)', 1, '[{\"added\": {}}]', 24, 1),
(131, '2024-03-03 11:23:52.527795', '6', 'Service object (6)', 3, '', 24, 1),
(132, '2024-03-03 11:23:52.535646', '3', 'Service object (3)', 3, '', 24, 1),
(133, '2024-03-03 11:24:55.502825', '8', 'Service object (8)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 24, 1),
(134, '2024-03-03 11:25:06.761817', '2', 'Service object (2)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 24, 1),
(135, '2024-03-03 11:25:20.386789', '7', 'Service object (7)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 24, 1),
(136, '2024-03-03 11:39:07.370555', '11', 'Drizzle Dream', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(137, '2024-03-03 11:47:59.266500', '12', 'Citrus x sinensis', 1, '[{\"added\": {}}]', 8, 1),
(138, '2024-03-03 11:48:59.320165', '11', 'Citrus x sinensis', 1, '[{\"added\": {}}]', 18, 1),
(139, '2024-03-03 11:51:21.526514', '11', 'Citrus x sinensis', 1, '[{\"added\": {}}]', 17, 1),
(140, '2024-03-03 11:53:19.671814', '13', 'Mangifera indica', 1, '[{\"added\": {}}]', 8, 1),
(141, '2024-03-03 12:41:42.407577', '12', 'Mangifera indica', 1, '[{\"added\": {}}]', 18, 1),
(142, '2024-03-03 12:44:15.088205', '12', 'Mangifera indica', 1, '[{\"added\": {}}]', 17, 1),
(143, '2024-03-03 12:45:59.331381', '13', 'Mangifera indica', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(144, '2024-03-03 12:47:53.761508', '14', 'Rubus idaeus', 1, '[{\"added\": {}}]', 8, 1),
(145, '2024-03-03 12:49:26.199996', '13', 'Rubus idaeus', 1, '[{\"added\": {}}]', 18, 1),
(146, '2024-03-03 12:53:40.551341', '13', 'Rubus idaeus', 1, '[{\"added\": {}}]', 17, 1),
(147, '2024-03-03 12:58:37.480649', '15', 'Vitis vinifera', 1, '[{\"added\": {}}]', 8, 1),
(148, '2024-03-03 13:00:31.199869', '14', 'Vitis vinifera', 1, '[{\"added\": {}}]', 18, 1),
(149, '2024-03-03 13:03:37.161121', '15', 'Vitis vinifera', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(150, '2024-03-03 13:05:34.196493', '14', 'Vitis vinifera', 1, '[{\"added\": {}}]', 17, 1),
(151, '2024-03-03 13:07:59.416803', '16', 'Prunus persica', 1, '[{\"added\": {}}]', 8, 1),
(152, '2024-03-03 13:08:20.267045', '15', 'Vitis vinifera', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 1),
(153, '2024-03-03 13:08:20.270662', '14', 'Rubus idaeus', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 1),
(154, '2024-03-03 13:08:20.275228', '13', 'Mangifera indica', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 1),
(155, '2024-03-03 13:08:20.278357', '12', 'Citrus x sinensis', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 1),
(156, '2024-03-03 13:08:20.281733', '10', 'Torrential Beauty', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 1),
(157, '2024-03-03 13:08:20.291596', '9', 'Monsoon Majesty', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 1),
(158, '2024-03-03 13:08:20.294284', '8', 'Misty Morning', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 1),
(159, '2024-03-03 13:08:20.302338', '7', 'Raindrop Delight', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 1),
(160, '2024-03-03 13:10:21.063412', '16', 'Prunus persica', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(161, '2024-03-03 13:12:06.929707', '15', 'Prunus persica', 1, '[{\"added\": {}}]', 18, 1),
(162, '2024-03-03 13:15:08.558333', '15', 'Prunus persica', 2, '[{\"changed\": {\"fields\": [\"Height\", \"Spread\", \"Material\", \"Compatibility\", \"Country of Origin\"]}}]', 18, 1),
(163, '2024-03-03 13:16:35.518470', '15', 'Prunus persica', 1, '[{\"added\": {}}]', 17, 1),
(164, '2024-03-03 13:29:10.237319', '17', 'Ocimum basilicum', 1, '[{\"added\": {}}]', 8, 1),
(165, '2024-03-03 13:31:18.538158', '16', 'Ocimum basilicum', 1, '[{\"added\": {}}]', 18, 1),
(166, '2024-03-03 13:34:07.591278', '16', 'Ocimum basilicum', 1, '[{\"added\": {}}]', 17, 1),
(167, '2024-03-03 13:36:45.263319', '18', 'Vinca minor', 1, '[{\"added\": {}}]', 8, 1),
(168, '2024-03-03 13:40:34.845554', '17', 'Vinca minor', 1, '[{\"added\": {}}]', 18, 1),
(169, '2024-03-03 13:42:15.907624', '17', 'Vinca minor', 1, '[{\"added\": {}}]', 17, 1),
(170, '2024-03-03 13:46:21.869524', '19', 'NS-2', 1, '[{\"added\": {}}]', 8, 1),
(171, '2024-03-03 13:47:46.163290', '18', 'NS-2', 1, '[{\"added\": {}}]', 18, 1),
(172, '2024-03-03 13:50:06.295117', '18', 'NS-2', 1, '[{\"added\": {}}]', 17, 1),
(173, '2024-03-03 13:54:19.165987', '20', 'Pusa Basmati 1121', 1, '[{\"added\": {}}]', 8, 1),
(174, '2024-03-03 13:54:49.662218', '19', 'Pusa Basmati 1121', 1, '[{\"added\": {}}]', 18, 1),
(175, '2024-03-03 13:55:53.711808', '19', 'Pusa Basmati 1121', 1, '[{\"added\": {}}]', 17, 1),
(176, '2024-03-03 13:58:45.825720', '8', 'GreenThumb', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 24, 1),
(177, '2024-03-03 13:58:54.206900', '7', 'NatureCare', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 24, 1),
(178, '2024-03-03 13:59:02.131640', '5', 'EcoScape', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 24, 1),
(179, '2024-03-03 13:59:11.261633', '4', 'BloomBuddy', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 24, 1),
(180, '2024-03-03 13:59:20.888735', '2', 'EvergreenSolutions', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 24, 1),
(181, '2024-03-03 13:59:27.686046', '1', 'GreenGenie', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 24, 1),
(182, '2024-03-03 13:59:40.212484', '21', 'NS-01', 1, '[{\"added\": {}}]', 8, 1),
(183, '2024-03-03 14:00:14.881823', '20', 'NS-01', 1, '[{\"added\": {}}]', 18, 1),
(184, '2024-03-03 14:00:30.127832', '20', 'NS-01', 1, '[{\"added\": {}}]', 17, 1),
(185, '2024-03-03 14:05:28.204929', '1', 'Lawn mowing', 1, '[{\"added\": {}}]', 25, 1),
(186, '2024-03-03 14:05:46.718095', '2', 'Hedge trimming', 1, '[{\"added\": {}}]', 25, 1),
(187, '2024-03-03 14:06:26.007812', '3', 'Planting', 1, '[{\"added\": {}}]', 25, 1),
(188, '2024-03-03 14:07:42.856475', '4', 'Mulching', 1, '[{\"added\": {}}]', 25, 1),
(189, '2024-03-03 14:08:08.360791', '5', 'Garden design', 1, '[{\"added\": {}}]', 25, 1),
(190, '2024-03-03 14:08:27.943327', '6', 'Soil testing', 1, '[{\"added\": {}}]', 25, 1),
(191, '2024-03-03 14:09:59.579743', '7', 'Flower bed maintenan', 1, '[{\"added\": {}}]', 25, 1),
(192, '2024-03-03 14:10:24.138599', '8', 'Tree pruning', 1, '[{\"added\": {}}]', 25, 1),
(193, '2024-03-03 14:11:15.056911', '9', 'Pest control', 1, '[{\"added\": {}}]', 25, 1),
(194, '2024-03-03 14:11:52.534178', '10', 'Irrigation system in', 1, '[{\"added\": {}}]', 25, 1),
(195, '2024-03-03 14:12:22.704580', '11', 'Lawn renovation', 1, '[{\"added\": {}}]', 25, 1),
(196, '2024-03-03 14:17:56.982569', '22', 'FS-1', 1, '[{\"added\": {}}]', 8, 1),
(197, '2024-03-03 14:18:21.724063', '11', 'Lawn renovation', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 25, 1),
(198, '2024-03-03 14:18:31.479474', '10', 'Irrigation system in', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 25, 1),
(199, '2024-03-03 14:18:43.044226', '21', 'FS-1', 1, '[{\"added\": {}}]', 18, 1),
(200, '2024-03-03 14:18:45.684187', '9', 'Pest control', 2, '[]', 25, 1),
(201, '2024-03-03 14:18:55.942977', '8', 'Tree pruning', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 25, 1),
(202, '2024-03-03 14:19:02.274492', '22', 'FS-1', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Offer price\"]}}]', 8, 1),
(203, '2024-03-03 14:19:08.742216', '5', 'Garden design', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 25, 1),
(204, '2024-03-03 14:19:21.795099', '1', 'Lawn mowing', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 25, 1),
(205, '2024-03-03 14:19:28.720490', '21', 'FS-1', 1, '[{\"added\": {}}]', 17, 1),
(206, '2024-03-03 14:24:58.534786', '23', 'Organic fertilizers', 1, '[{\"added\": {}}]', 8, 1),
(207, '2024-03-03 14:26:30.607181', '23', 'Organic fertilizers', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Offer price\"]}}]', 8, 1),
(208, '2024-03-03 14:29:38.125869', '22', 'Organic fertilizers', 1, '[{\"added\": {}}]', 18, 1),
(209, '2024-03-03 14:33:17.753638', '22', 'Organic fertilizers', 1, '[{\"added\": {}}]', 17, 1),
(210, '2024-03-03 14:34:01.947046', '23', 'Organic fertilizers', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Offer price\"]}}]', 8, 1),
(211, '2024-03-03 14:40:11.642184', '24', 'Single Superphosphate (SSP)', 1, '[{\"added\": {}}]', 8, 1),
(212, '2024-03-03 14:40:52.706484', '23', 'Single Superphosphate (SSP)', 1, '[{\"added\": {}}]', 18, 1),
(213, '2024-03-03 14:41:28.399032', '23', 'Single Superphosphate (SSP)', 1, '[{\"added\": {}}]', 17, 1),
(214, '2024-03-03 14:45:44.038649', '25', 'Potassium Chloride', 1, '[{\"added\": {}}]', 8, 1),
(215, '2024-03-03 14:46:05.374317', '11', 'Lawn renovation', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 25, 1),
(216, '2024-03-03 14:46:11.143292', '10', 'Irrigation system in', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 25, 1),
(217, '2024-03-03 14:46:15.362443', '9', 'Pest control', 2, '[]', 25, 1),
(218, '2024-03-03 14:46:20.542950', '1', 'Lawn mowing', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 25, 1),
(219, '2024-03-03 14:46:24.252365', '2', 'Hedge trimming', 2, '[]', 25, 1),
(220, '2024-03-03 14:46:27.377675', '3', 'Planting', 2, '[]', 25, 1),
(221, '2024-03-03 14:46:32.765455', '5', 'Garden design', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 25, 1),
(222, '2024-03-03 14:46:37.145933', '24', 'Potassium Chloride', 1, '[{\"added\": {}}]', 18, 1),
(223, '2024-03-03 14:46:37.176181', '6', 'Soil testing', 2, '[]', 25, 1),
(224, '2024-03-03 14:47:02.097514', '24', 'Potassium Chloride', 1, '[{\"added\": {}}]', 17, 1),
(225, '2024-03-03 14:53:51.581680', '8', 'Tree pruning', 2, '[{\"changed\": {\"fields\": [\"Service\"]}}]', 25, 1),
(226, '2024-03-03 14:53:58.205034', '8', 'Tree pruning', 2, '[]', 25, 1),
(227, '2024-03-03 14:54:13.651979', '9', 'Pest control', 2, '[{\"changed\": {\"fields\": [\"Service\"]}}]', 25, 1),
(228, '2024-03-03 14:54:23.543084', '2', 'EvergreenSolutions', 3, '', 24, 1),
(229, '2024-03-03 14:57:36.259958', '26', 'Rhizobium', 1, '[{\"added\": {}}]', 8, 1),
(230, '2024-03-03 14:58:22.104443', '25', 'Rhizobium', 1, '[{\"added\": {}}]', 18, 1),
(231, '2024-03-03 14:59:16.231011', '25', 'Rhizobium', 1, '[{\"added\": {}}]', 17, 1),
(232, '2024-03-03 14:59:49.044142', '26', 'Rhizobium', 2, '[{\"changed\": {\"fields\": [\"Offer price\"]}}]', 8, 1),
(233, '2024-03-03 15:04:54.816932', '27', 'Shovel', 1, '[{\"added\": {}}]', 8, 1),
(234, '2024-03-03 15:05:34.957407', '26', 'Shovel', 1, '[{\"added\": {}}]', 18, 1),
(235, '2024-03-03 15:06:09.553673', '26', 'Shovel', 1, '[{\"added\": {}}]', 17, 1),
(236, '2024-03-03 15:11:44.607619', '15', 'Miniature Garden Toys', 3, '', 21, 1),
(237, '2024-03-03 15:13:01.135471', '16', 'Gardening Accessories', 3, '', 21, 1),
(238, '2024-03-03 15:16:52.776091', '1', 'Order #1 - mk', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(239, '2024-03-03 15:16:59.527541', '1', 'Order #1 - mk', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(240, '2024-03-03 15:17:06.598383', '1', 'Order #1 - mk', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(241, '2024-03-03 15:17:25.048649', '1', 'Order #1 - mk', 3, '', 11, 1),
(242, '2024-03-03 15:28:07.875842', '2', 'Order #2 - mk', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(243, '2024-03-03 15:28:48.320218', '2', 'Order #2 - mk', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(244, '2024-03-17 14:28:13.976909', '2', 'Cart object (2)', 1, '[{\"added\": {}}]', 9, 1),
(245, '2024-03-18 06:10:01.687096', '11', 'Lawn renovation', 2, '[{\"changed\": {\"fields\": [\"Service time\"]}}]', 25, 1),
(246, '2024-03-18 06:10:23.056770', '11', 'Lawn renovation', 2, '[{\"changed\": {\"fields\": [\"Service time\"]}}]', 25, 1),
(247, '2024-03-18 06:21:53.491468', '11', 'Lawn renovation', 3, '', 25, 1),
(248, '2024-03-18 06:21:53.508278', '10', 'Irrigation system in', 3, '', 25, 1),
(249, '2024-03-18 06:21:53.508278', '9', 'Pest control', 3, '', 25, 1),
(250, '2024-03-18 06:21:53.512940', '5', 'Garden design', 3, '', 25, 1),
(251, '2024-03-18 06:21:53.516872', '3', 'Planting', 3, '', 25, 1),
(252, '2024-03-18 06:21:53.518406', '2', 'Hedge trimming', 3, '', 25, 1),
(253, '2024-03-18 06:22:15.663030', '8', 'Tree pruning', 2, '[{\"changed\": {\"fields\": [\"Service time\"]}}]', 25, 1),
(254, '2024-03-18 06:22:30.108954', '7', 'Flower bed maintenan', 2, '[{\"changed\": {\"fields\": [\"Service time\"]}}]', 25, 1),
(255, '2024-03-18 06:22:42.160429', '7', 'Flower bed maintenan', 2, '[{\"changed\": {\"fields\": [\"Service time\"]}}]', 25, 1),
(256, '2024-03-18 06:22:55.966514', '6', 'Soil testing', 2, '[{\"changed\": {\"fields\": [\"Service time\"]}}]', 25, 1),
(257, '2024-03-18 06:23:06.424399', '4', 'Mulching', 2, '[{\"changed\": {\"fields\": [\"Service time\"]}}]', 25, 1),
(258, '2024-03-18 06:23:16.791390', '1', 'Lawn mowing', 2, '[{\"changed\": {\"fields\": [\"Service time\"]}}]', 25, 1),
(259, '2024-03-18 17:51:24.421554', '1', 'Lawn Care', 1, '[{\"added\": {}}]', 24, 1),
(260, '2024-03-18 17:53:08.276116', '1', 'Fertillization', 1, '[{\"added\": {}}]', 25, 1),
(261, '2024-03-18 18:43:16.743271', '1', 'ProductImage object (1)', 1, '[{\"added\": {}}]', 20, 1),
(262, '2024-03-19 05:45:18.653765', '2', 'General Gardener', 1, '[{\"added\": {}}]', 24, 1),
(263, '2024-03-19 05:46:29.740663', '3', 'Grass Cutting', 1, '[{\"added\": {}}]', 24, 1),
(264, '2024-03-19 05:49:11.558253', '4', 'Repotting of plant', 1, '[{\"added\": {}}]', 24, 1),
(265, '2024-03-19 05:56:49.024677', '2', 'General Service', 1, '[{\"added\": {}}]', 25, 1),
(266, '2024-03-19 06:00:02.803670', '3', 'Grass Services', 1, '[{\"added\": {}}]', 25, 1),
(267, '2024-03-19 06:00:30.267653', '3', 'Grass Services', 2, '[{\"changed\": {\"fields\": [\"Service type\"]}}]', 25, 1),
(268, '2024-03-19 06:02:49.053502', '4', 'Sowing of saplings i', 1, '[{\"added\": {}}]', 25, 1),
(269, '2024-03-19 06:03:07.208416', '4', 'Sowing of saplings i', 2, '[]', 25, 1),
(270, '2024-03-19 06:04:32.827729', '4', 'Sowing of saplings', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 25, 1),
(271, '2024-03-19 06:25:39.848428', '2', 'General Service', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 25, 1),
(272, '2024-03-19 06:37:13.825028', '25', 'Potassium Chloride', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(273, '2024-03-19 06:37:13.832467', '22', 'FS-1', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(274, '2024-03-19 06:37:13.834497', '15', 'Vitis vinifera', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(275, '2024-03-19 06:37:13.836497', '13', 'Mangifera indica', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(276, '2024-03-19 06:41:38.162346', '27', 'pavdo', 1, '[{\"added\": {}}]', 8, 1),
(277, '2024-03-19 06:42:32.288795', '27', 'pavdo', 1, '[{\"added\": {}}]', 18, 1),
(278, '2024-03-19 06:42:53.212121', '27', 'pavdo', 1, '[{\"added\": {}}]', 17, 1),
(279, '2024-03-19 06:45:04.935763', '27', 'pavdo', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(280, '2024-03-19 06:45:50.242618', '27', 'pavdo', 2, '[{\"changed\": {\"fields\": [\"Seasonal Care\"]}}]', 17, 1),
(281, '2024-03-19 17:18:56.303067', '4', 'Booking object (4)', 3, '', 28, 1),
(282, '2024-03-19 17:18:56.311087', '3', 'Booking object (3)', 3, '', 28, 1),
(283, '2024-03-19 17:18:56.313242', '2', 'Booking object (2)', 3, '', 28, 1),
(284, '2024-03-19 17:18:56.314651', '1', 'Booking object (1)', 3, '', 28, 1),
(285, '2024-03-19 17:32:09.006510', '5', 'Booking object (5)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 28, 1),
(286, '2024-03-19 17:36:15.161285', '5', 'Booking object (5)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 28, 1),
(287, '2024-03-19 17:45:07.464080', '6', 'Order #6 - manan', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(288, '2024-03-19 17:47:11.447880', '6', 'Order #6 - manan', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(289, '2024-03-19 17:48:03.438685', '6', 'Order #6 - manan', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(290, '2024-03-19 19:52:28.085886', '6', 'Order #6 - manan', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(291, '2024-03-20 02:55:11.823438', '6', 'Booking object (6)', 2, '[]', 28, 1),
(292, '2024-03-20 03:58:45.455685', '5', 'Order #5 - rv', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Payment status\"]}}]', 11, 1),
(293, '2024-03-20 03:58:45.470429', '4', 'Order #4 - manan', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 11, 1),
(294, '2024-03-20 03:58:45.471673', '3', 'Order #3 - dhulo', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 11, 1),
(295, '2024-03-20 03:59:01.684319', '5', 'Order #5 - rv', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 11, 1),
(296, '2024-03-20 03:59:01.684319', '4', 'Order #4 - manan', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 11, 1),
(297, '2024-03-20 03:59:01.684319', '3', 'Order #3 - dhulo', 2, '[{\"changed\": {\"fields\": [\"Payment status\"]}}]', 11, 1),
(298, '2024-03-21 13:46:22.208806', '5', 'Review object (5)', 3, '', 19, 1),
(299, '2024-03-21 13:46:22.210782', '4', 'Review object (4)', 3, '', 19, 1),
(300, '2024-03-21 13:46:22.213346', '3', 'Review object (3)', 3, '', 19, 1),
(301, '2024-03-21 13:46:22.213863', '2', 'Review object (2)', 3, '', 19, 1),
(302, '2024-03-21 13:46:22.213863', '1', 'Review object (1)', 3, '', 19, 1),
(303, '2024-03-21 14:05:37.605124', '2', 'manan', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(304, '2024-03-21 14:07:47.661539', '3', 'dhulo', 3, '', 10, 1),
(305, '2024-03-21 14:07:47.668590', '1', 'mk', 3, '', 10, 1),
(306, '2024-03-21 14:11:02.610103', '4', 'Velvet Vibes', 2, '[{\"changed\": {\"fields\": [\"Rating\"]}}]', 8, 1),
(307, '2024-03-21 14:19:40.813441', '3', 'dhulo', 3, '', 4, 1),
(308, '2024-03-21 14:19:40.813441', '2', 'mk', 3, '', 4, 1),
(309, '2024-03-21 14:22:44.075186', '2', 'manan', 2, '[{\"changed\": {\"fields\": [\"User image\"]}}]', 10, 1),
(310, '2024-03-21 14:23:08.031101', '2', 'manan', 2, '[{\"changed\": {\"fields\": [\"User image\"]}}]', 10, 1),
(311, '2024-03-21 14:33:53.406777', '16', 'Review object (16)', 3, '', 19, 1),
(312, '2024-03-21 14:33:53.408648', '15', 'Review object (15)', 3, '', 19, 1),
(313, '2024-03-21 14:33:53.408648', '14', 'Review object (14)', 3, '', 19, 1),
(314, '2024-03-21 14:33:53.408648', '13', 'Review object (13)', 3, '', 19, 1),
(315, '2024-03-21 14:33:53.408648', '12', 'Review object (12)', 3, '', 19, 1),
(316, '2024-03-21 14:33:53.420707', '11', 'Review object (11)', 3, '', 19, 1),
(317, '2024-03-21 14:33:53.422548', '10', 'Review object (10)', 3, '', 19, 1),
(318, '2024-03-21 14:33:53.423159', '9', 'Review object (9)', 3, '', 19, 1),
(319, '2024-03-23 16:24:04.220898', '8', 'Order #8 - vk', 2, '[{\"changed\": {\"fields\": [\"Landmark\", \"Status\", \"Payment status\", \"Update at\"]}}]', 11, 1),
(320, '2024-03-23 16:25:31.313630', '8', 'Order #8 - vk', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(321, '2024-03-23 16:26:20.602902', '8', 'Order #8 - vk', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(322, '2024-03-23 16:28:37.215350', '5', 'vk', 2, '[{\"changed\": {\"fields\": [\"User image\"]}}]', 10, 1),
(323, '2024-03-23 17:22:23.196916', '9', 'Order #9 - vk', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Update at\"]}}]', 11, 1),
(324, '2024-04-16 14:29:22.106293', '8', 'Booking object (8)', 3, '', 28, 1),
(325, '2024-04-16 14:29:22.114937', '7', 'Booking object (7)', 3, '', 28, 1),
(326, '2024-04-16 14:29:22.118091', '6', 'Booking object (6)', 3, '', 28, 1),
(327, '2024-04-16 14:29:22.122246', '5', 'Booking object (5)', 3, '', 28, 1),
(328, '2024-04-16 14:30:28.992858', '1', 'Gujarat', 1, '[{\"added\": {}}]', 30, 1),
(329, '2024-04-16 14:30:47.850044', '1', 'Ahmedabad', 1, '[{\"added\": {}}]', 29, 1),
(330, '2024-04-16 14:30:57.366607', '2', 'Surat', 1, '[{\"added\": {}}]', 29, 1),
(331, '2024-04-16 14:33:20.062936', '2', 'Maharastra', 1, '[{\"added\": {}}]', 30, 1),
(332, '2024-04-16 14:33:51.516644', '3', 'Pune', 1, '[{\"added\": {}}]', 29, 1),
(333, '2024-04-16 14:33:59.509490', '4', 'Mumbai', 1, '[{\"added\": {}}]', 29, 1),
(334, '2024-04-16 14:34:20.469005', '1', 'Pin_Code object (1)', 1, '[{\"added\": {}}]', 31, 1),
(335, '2024-04-16 14:34:29.559884', '2', 'Pin_Code object (2)', 1, '[{\"added\": {}}]', 31, 1),
(336, '2024-04-16 14:34:36.724522', '3', 'Pin_Code object (3)', 1, '[{\"added\": {}}]', 31, 1),
(337, '2024-04-16 14:34:43.291532', '4', 'Pin_Code object (4)', 1, '[{\"added\": {}}]', 31, 1),
(338, '2024-04-16 14:34:50.524668', '5', 'Pin_Code object (5)', 1, '[{\"added\": {}}]', 31, 1),
(339, '2024-04-16 14:35:01.557731', '6', 'Pin_Code object (6)', 1, '[{\"added\": {}}]', 31, 1),
(340, '2024-04-17 04:22:35.530957', '12', 'Order #12 - manan', 3, '', 11, 1),
(341, '2024-04-17 04:22:35.535204', '11', 'Order #11 - manan', 3, '', 11, 1),
(342, '2024-04-17 04:38:32.257946', '16', 'Order #16 - manan', 3, '', 11, 1),
(343, '2024-04-17 04:38:32.261073', '15', 'Order #15 - manan', 3, '', 11, 1),
(344, '2024-04-17 04:38:32.263183', '14', 'Order #14 - manan', 3, '', 11, 1),
(345, '2024-04-17 04:38:32.263183', '13', 'Order #13 - manan', 3, '', 11, 1),
(346, '2024-04-17 04:43:15.390929', '15', 'Payment object (15)', 2, '[{\"changed\": {\"fields\": [\"Online transaction ID\", \"Status\"]}}]', 27, 1),
(347, '2024-04-17 06:14:15.897555', '17', 'Order #17 - manan', 3, '', 11, 1),
(348, '2024-04-17 08:36:42.071719', '1', 'Gardner object (1)', 1, '[{\"added\": {}}]', 26, 1),
(349, '2024-04-17 08:37:08.260018', '2', 'Gardner object (2)', 1, '[{\"added\": {}}]', 26, 1),
(350, '2024-04-17 08:37:35.797363', '3', 'Gardner object (3)', 1, '[{\"added\": {}}]', 26, 1),
(351, '2024-04-17 08:38:28.156778', '4', 'Gardner object (4)', 1, '[{\"added\": {}}]', 26, 1),
(352, '2024-04-17 08:48:52.234826', '4', 'Sowing of saplings', 3, '', 25, 1),
(353, '2024-04-17 08:48:52.237207', '3', 'Grass Services', 3, '', 25, 1),
(354, '2024-04-17 08:48:52.241880', '2', 'General Service', 3, '', 25, 1),
(355, '2024-04-17 08:48:52.243559', '1', 'Fertillization', 3, '', 25, 1),
(356, '2024-04-17 08:56:15.189778', '5', 'sowing of splings', 1, '[{\"added\": {}}]', 25, 1),
(357, '2024-04-17 08:56:30.850393', '6', 'Grass Service', 1, '[{\"added\": {}}]', 25, 1),
(358, '2024-04-17 08:56:45.572333', '7', 'General Service', 1, '[{\"added\": {}}]', 25, 1),
(359, '2024-04-17 08:57:01.788318', '8', 'Frtilization', 1, '[{\"added\": {}}]', 25, 1),
(360, '2024-04-17 09:00:12.403003', '5', 'Gardner object (5)', 1, '[{\"added\": {}}]', 26, 1),
(361, '2024-04-17 09:02:05.850118', '6', 'Gardner object (6)', 1, '[{\"added\": {}}]', 26, 1),
(362, '2024-04-17 09:03:45.538670', '7', 'Gardner object (7)', 1, '[{\"added\": {}}]', 26, 1),
(363, '2024-04-17 09:05:05.202100', '8', 'Gardner object (8)', 1, '[{\"added\": {}}]', 26, 1),
(364, '2024-04-17 17:01:14.493232', '1', 'Repotting of plant', 1, '[{\"added\": {}}]', 24, 1),
(365, '2024-04-17 17:01:36.762973', '2', 'Grass Cutting', 1, '[{\"added\": {}}]', 24, 1),
(366, '2024-04-17 17:01:59.795803', '3', 'General Gardener', 1, '[{\"added\": {}}]', 24, 1),
(367, '2024-04-17 17:02:23.931197', '4', 'Lwan Care', 1, '[{\"added\": {}}]', 24, 1),
(368, '2024-04-17 17:03:52.528607', '1', 'sowing of saplings', 1, '[{\"added\": {}}]', 25, 1),
(369, '2024-04-17 17:04:07.056509', '2', 'Grass Service', 1, '[{\"added\": {}}]', 25, 1),
(370, '2024-04-17 17:04:23.176737', '3', 'General Service', 1, '[{\"added\": {}}]', 25, 1),
(371, '2024-04-17 17:04:43.893840', '4', 'Fertilization', 1, '[{\"added\": {}}]', 25, 1),
(372, '2024-04-17 17:06:15.912607', '1', 'Gardner object (1)', 1, '[{\"added\": {}}]', 26, 1),
(373, '2024-04-17 17:07:31.575297', '2', 'Gardner object (2)', 1, '[{\"added\": {}}]', 26, 1),
(374, '2024-04-18 06:00:39.531629', '19', 'Order #19 - manan', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(375, '2024-04-18 06:45:51.982593', '35', 'Review object (35)', 3, '', 19, 1),
(376, '2024-04-18 06:45:51.987635', '34', 'Review object (34)', 3, '', 19, 1),
(377, '2024-04-18 13:43:52.484387', '6', 'mp', 3, '', 4, 1),
(378, '2024-04-18 13:43:59.872891', '4', 'rv', 3, '', 4, 1),
(379, '2024-04-18 13:43:59.875122', '5', 'vk', 3, '', 4, 1),
(380, '2024-04-18 14:58:41.874843', '7', 'chimnbhai patel institute,Ahmedabad- 380007', 3, '', 15, 1),
(381, '2024-04-18 17:13:45.411747', '4', 'Booking object (4)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 28, 1),
(382, '2024-04-18 17:13:55.427958', '3', 'Booking object (3)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 28, 1),
(383, '2024-04-18 17:14:35.688534', '21', 'Order #21 - mp', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(384, '2024-04-18 17:14:35.695037', '20', 'Order #20 - mp', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(385, '2024-04-18 17:32:35.086798', '22', 'Order #22 - manan', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(386, '2024-04-23 13:31:36.947341', '2', 'Maharastra', 3, '', 30, 1),
(387, '2024-04-23 19:08:07.606788', '24', 'Order #24 - manan', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(388, '2024-04-24 03:14:53.719511', '2', 'Emerald Elegance', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(389, '2024-04-24 03:15:27.298600', '1', 'ProductImage object (1)', 2, '[{\"changed\": {\"fields\": [\"Img1\"]}}]', 20, 1),
(390, '2024-04-24 03:15:40.883037', '1', 'ProductImage object (1)', 2, '[{\"changed\": {\"fields\": [\"Img2\"]}}]', 20, 1),
(391, '2024-04-24 03:17:53.917148', '1', 'ProductImage object (1)', 2, '[{\"changed\": {\"fields\": [\"Img3\"]}}]', 20, 1),
(392, '2024-04-24 03:18:07.271311', '1', 'ProductImage object (1)', 2, '[{\"changed\": {\"fields\": [\"Img2\"]}}]', 20, 1),
(393, '2024-04-24 03:23:47.669959', '2', 'ProductImage object (2)', 1, '[{\"added\": {}}]', 20, 1),
(394, '2024-04-24 03:28:31.716614', '3', 'ProductImage object (3)', 1, '[{\"added\": {}}]', 20, 1),
(395, '2024-04-24 03:29:17.091550', '27', 'Shovel', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(396, '2024-04-24 03:32:57.362848', '4', 'ProductImage object (4)', 1, '[{\"added\": {}}]', 20, 1),
(397, '2024-04-24 03:47:22.860329', '5', 'Golden Pothos', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(398, '2024-04-24 03:49:47.374225', '5', 'ProductImage object (5)', 1, '[{\"added\": {}}]', 20, 1),
(399, '2024-04-24 03:52:59.485689', '6', 'ProductImage object (6)', 1, '[{\"added\": {}}]', 20, 1),
(400, '2024-04-24 03:58:18.094035', '7', 'ProductImage object (7)', 1, '[{\"added\": {}}]', 20, 1),
(401, '2024-04-24 04:00:07.197278', '6', 'Raindrop Delight', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 18, 1),
(402, '2024-04-24 04:00:56.647010', '28', 'Spade', 1, '[{\"added\": {}}]', 8, 1),
(403, '2024-04-24 04:10:22.681661', '8', 'veer', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(404, '2024-04-24 04:15:34.595164', '28', 'Spade', 3, '', 8, 1),
(405, '2024-04-24 04:20:48.921845', '25', 'Order #25 - veer', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(35, 'admin_tools_stats', 'cachedvalue'),
(34, 'admin_tools_stats', 'criteriatostatsm2m'),
(32, 'admin_tools_stats', 'dashboardstats'),
(33, 'admin_tools_stats', 'dashboardstatscriteria'),
(22, 'article', 'article'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(28, 'gardner', 'booking'),
(26, 'gardner', 'gardner'),
(23, 'gardner', 'gardnerbooking'),
(24, 'gardner', 'service'),
(25, 'gardner', 'subservice'),
(6, 'sessions', 'session'),
(17, 'store', 'caretips'),
(9, 'store', 'cart'),
(14, 'store', 'cart_item'),
(7, 'store', 'category'),
(29, 'store', 'city'),
(10, 'store', 'customeruser'),
(13, 'store', 'likedproduct'),
(11, 'store', 'order'),
(16, 'store', 'orderbill'),
(12, 'store', 'orderitem'),
(27, 'store', 'payment'),
(31, 'store', 'pin_code'),
(8, 'store', 'product'),
(18, 'store', 'productdetails'),
(20, 'store', 'productimage'),
(19, 'store', 'review'),
(15, 'store', 'shippingaddress'),
(30, 'store', 'state'),
(21, 'store', 'subcategory');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-03 07:40:58.294862'),
(2, 'auth', '0001_initial', '2024-03-03 07:40:58.823173'),
(3, 'admin', '0001_initial', '2024-03-03 07:40:58.956200'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-03 07:40:58.965390'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-03 07:40:58.974834'),
(6, 'store', '0001_initial', '2024-03-03 07:40:59.058050'),
(7, 'store', '0002_product_quantity_available_alter_category_is_active_and_more', '2024-03-03 07:40:59.187303'),
(8, 'contenttypes', '0002_remove_content_type_name', '2024-03-03 07:40:59.260748'),
(9, 'auth', '0002_alter_permission_name_max_length', '2024-03-03 07:40:59.325466'),
(10, 'auth', '0003_alter_user_email_max_length', '2024-03-03 07:40:59.344020'),
(11, 'auth', '0004_alter_user_username_opts', '2024-03-03 07:40:59.351130'),
(12, 'auth', '0005_alter_user_last_login_null', '2024-03-03 07:40:59.421075'),
(13, 'auth', '0006_require_contenttypes_0002', '2024-03-03 07:40:59.424754'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2024-03-03 07:40:59.432627'),
(15, 'auth', '0008_alter_user_username_max_length', '2024-03-03 07:40:59.450322'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2024-03-03 07:40:59.468878'),
(17, 'auth', '0010_alter_group_name_max_length', '2024-03-03 07:40:59.482683'),
(18, 'auth', '0011_update_proxy_permissions', '2024-03-03 07:40:59.507998'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2024-03-03 07:40:59.525757'),
(20, 'store', '0003_customer', '2024-03-03 07:40:59.784446'),
(21, 'store', '0004_customer_image_alter_customer_phone', '2024-03-03 07:40:59.858082'),
(22, 'store', '0005_rename_image_customer_user_image', '2024-03-03 07:40:59.877231'),
(23, 'store', '0006_remove_cart_user', '2024-03-03 07:41:00.396126'),
(24, 'store', '0007_cart_user', '2024-03-03 07:41:00.495333'),
(25, 'store', '0008_alter_cart_user', '2024-03-03 07:41:00.510181'),
(26, 'store', '0009_rename_customer_customeruser', '2024-03-03 07:41:01.113306'),
(27, 'store', '0010_remove_cart_user', '2024-03-03 07:41:01.366920'),
(28, 'store', '0011_remove_customeruser_user_image', '2024-03-03 07:41:01.386217'),
(29, 'store', '0012_alter_customeruser_options_and_more', '2024-03-03 07:41:01.724891'),
(30, 'store', '0013_custus_customer_delete_customeruser', '2024-03-03 07:41:01.998944'),
(31, 'store', '0014_customeruser_delete_customer_delete_custus', '2024-03-03 07:41:02.092457'),
(32, 'store', '0015_cuser', '2024-03-03 07:41:02.349820'),
(33, 'store', '0016_delete_cuser', '2024-03-03 07:41:02.369230'),
(34, 'store', '0017_address', '2024-03-03 07:41:02.490317'),
(35, 'store', '0018_address_area', '2024-03-03 07:41:02.520819'),
(36, 'store', '0019_rename_adderess_address_address', '2024-03-03 07:41:02.544403'),
(37, 'store', '0020_alter_address_address', '2024-03-03 07:41:02.643018'),
(38, 'article', '0001_initial', '2024-03-03 07:41:02.717995'),
(40, 'gardner', '0002_gardnerbooking_service_subservice_delete_booking', '2024-03-03 07:41:02.935586'),
(41, 'gardner', '0003_gardner', '2024-03-03 07:41:02.995773'),
(42, 'sessions', '0001_initial', '2024-03-03 07:41:03.031026'),
(43, 'store', '0021_alter_category_updated_at', '2024-03-03 07:41:03.038626'),
(44, 'store', '0022_alter_address_update_at', '2024-03-03 07:41:03.055275'),
(45, 'store', '0023_demo', '2024-03-03 07:41:03.085339'),
(46, 'store', '0024_alter_demo_phone', '2024-03-03 07:41:03.095163'),
(47, 'store', '0025_delete_demo', '2024-03-03 07:41:03.104317'),
(48, 'store', '0026_order', '2024-03-03 07:41:03.178392'),
(49, 'store', '0027_alter_order_amout_orderitem', '2024-03-03 07:41:03.341451'),
(50, 'store', '0028_rename_amout_order_amount', '2024-03-03 07:41:03.360850'),
(51, 'store', '0029_order_payment_status_order_status', '2024-03-03 07:41:03.408155'),
(52, 'store', '0030_alter_order_payment_status_alter_order_phone_and_more', '2024-03-03 07:41:03.535893'),
(53, 'store', '0031_orderitem_price_alter_order_payment_status_and_more', '2024-03-03 07:41:03.585937'),
(54, 'store', '0032_customeruser_address_alter_order_status', '2024-03-03 07:41:03.729284'),
(55, 'store', '0033_alter_address_city_alter_address_state_and_more', '2024-03-03 07:41:03.772763'),
(56, 'store', '0034_alter_address_city_alter_address_pin_code_and_more', '2024-03-03 07:41:03.944535'),
(57, 'store', '0035_alter_address_city_alter_address_state_and_more', '2024-03-03 07:41:04.079983'),
(58, 'store', '0036_alter_address_update_at_alter_order_payment_status_and_more', '2024-03-03 07:41:04.129549'),
(59, 'store', '0037_alter_address_update_at_alter_order_payment_status_and_more', '2024-03-03 07:41:04.176186'),
(60, 'store', '0038_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:04.312806'),
(61, 'store', '0039_alter_likedproduct_like_alter_order_status', '2024-03-03 07:41:04.345031'),
(62, 'store', '0040_remove_cart_product_remove_cart_quantity_and_more', '2024-03-03 07:41:04.886181'),
(63, 'store', '0041_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:04.983966'),
(64, 'store', '0042_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:05.013630'),
(65, 'store', '0043_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:05.051491'),
(66, 'store', '0044_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:05.081710'),
(67, 'store', '0045_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:05.119504'),
(68, 'store', '0046_rename_shippingaddress_shippingadd_and_more', '2024-03-03 07:41:05.192802'),
(69, 'store', '0047_rename_shippingadd_shippingaddress_and_more', '2024-03-03 07:41:05.275972'),
(70, 'store', '0048_remove_customeruser_address_and_more', '2024-03-03 07:41:05.337926'),
(71, 'store', '0049_rename_quantity_available_product_quantity_and_more', '2024-03-03 07:41:05.645898'),
(72, 'store', '0050_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:05.760733'),
(73, 'store', '0051_order_discount_order_shipping_charges_and_more', '2024-03-03 07:41:05.889096'),
(74, 'store', '0052_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:05.989755'),
(75, 'store', '0053_alter_order_phone_alter_order_status_and_more', '2024-03-03 07:41:06.126977'),
(76, 'store', '0054_orderbill_billno_alter_order_payment_status_and_more', '2024-03-03 07:41:06.174845'),
(77, 'store', '0055_caretips_alter_product_options_and_more', '2024-03-03 07:41:06.511480'),
(78, 'store', '0056_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:06.541580'),
(79, 'store', '0057_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:06.575170'),
(80, 'store', '0058_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:06.612925'),
(81, 'store', '0059_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:06.647823'),
(82, 'store', '0060_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:06.676224'),
(83, 'store', '0061_alter_order_status', '2024-03-03 07:41:06.698765'),
(84, 'store', '0062_alter_order_status', '2024-03-03 07:41:06.716849'),
(85, 'store', '0063_caretips_product_alter_order_payment_status_and_more', '2024-03-03 07:41:06.815231'),
(86, 'store', '0064_caretips_instructions_productdetails_compatibility_and_more', '2024-03-03 07:41:06.923290'),
(87, 'store', '0065_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:06.958347'),
(88, 'store', '0066_orderitem_comment_alter_order_status_review', '2024-03-03 07:41:07.070878'),
(89, 'store', '0067_remove_orderitem_comment_remove_review_order_and_more', '2024-03-03 07:41:07.499122'),
(90, 'store', '0068_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:07.593054'),
(91, 'store', '0069_alter_order_status_alter_review_rating', '2024-03-03 07:41:07.685752'),
(92, 'store', '0070_productdetails_rating_alter_order_payment_status_and_more', '2024-03-03 07:41:07.736178'),
(93, 'store', '0071_remove_productdetails_rating_product_rating_and_more', '2024-03-03 07:41:07.813143'),
(94, 'store', '0072_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:07.916760'),
(95, 'store', '0073_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:08.008255'),
(96, 'store', '0074_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.042178'),
(97, 'store', '0075_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:08.129455'),
(98, 'store', '0076_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.162648'),
(99, 'store', '0077_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.195359'),
(100, 'store', '0078_alter_order_status', '2024-03-03 07:41:08.217527'),
(101, 'store', '0079_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.252245'),
(102, 'store', '0080_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.285367'),
(103, 'store', '0081_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.322169'),
(104, 'store', '0082_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.359502'),
(105, 'store', '0083_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.397357'),
(106, 'store', '0084_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.428412'),
(107, 'store', '0085_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.463360'),
(108, 'store', '0086_product_offer_price_alter_order_status_and_more', '2024-03-03 07:41:08.512227'),
(109, 'store', '0087_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:08.625962'),
(110, 'store', '0088_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.663035'),
(111, 'store', '0089_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.693987'),
(112, 'store', '0090_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.734080'),
(113, 'store', '0091_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.767752'),
(114, 'store', '0092_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.810239'),
(115, 'store', '0093_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:08.841979'),
(116, 'store', '0094_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:09.012905'),
(117, 'store', '0095_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:09.054910'),
(118, 'store', '0096_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:09.092587'),
(119, 'store', '0097_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:09.126710'),
(120, 'store', '0098_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:09.167205'),
(121, 'store', '0099_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:09.202472'),
(122, 'store', '0100_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:09.244676'),
(123, 'store', '0101_alter_order_status', '2024-03-03 07:41:09.263145'),
(124, 'store', '0102_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:09.293051'),
(125, 'store', '0103_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:09.326701'),
(126, 'store', '0104_alter_order_status', '2024-03-03 07:41:09.343152'),
(127, 'store', '0105_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:09.383722'),
(128, 'store', '0106_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:09.418561'),
(129, 'store', '0107_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:09.453169'),
(130, 'store', '0108_alter_order_status', '2024-03-03 07:41:09.474998'),
(131, 'store', '0109_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:09.597445'),
(132, 'store', '0110_alter_order_payment_status_alter_order_status_and_more', '2024-03-03 07:41:09.925694'),
(133, 'store', '0111_product_shipping_charges_alter_order_status', '2024-03-03 07:41:09.968710'),
(134, 'store', '0112_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:10.004645'),
(135, 'store', '0113_alter_order_payment_status_alter_order_status', '2024-03-03 07:41:10.043232'),
(136, 'store', '0114_alter_order_status', '2024-03-03 08:00:42.753307'),
(137, 'article', '0002_alter_article_related_category', '2024-03-03 08:00:43.116825'),
(138, 'article', '0003_alter_article_title', '2024-03-03 08:26:40.405437'),
(139, 'store', '0115_alter_order_payment_status_alter_order_status', '2024-03-03 08:26:40.443615'),
(140, 'store', '0116_alter_caretips_fertilizing_and_more', '2024-03-03 08:47:37.584255'),
(141, 'article', '0004_remove_article_related_category', '2024-03-03 09:46:03.446345'),
(142, 'store', '0117_alter_order_payment_status_alter_order_status', '2024-03-03 09:46:03.477771'),
(143, 'store', '0118_alter_order_payment_status_alter_order_status', '2024-03-03 09:46:27.588296'),
(144, 'article', '0005_article_related_category', '2024-03-03 09:46:27.709254'),
(145, 'gardner', '0004_service_photo', '2024-03-03 11:07:17.147190'),
(146, 'store', '0119_alter_order_payment_status_alter_order_status', '2024-03-03 11:07:17.189049'),
(147, 'gardner', '0005_remove_subservice_sqft_area_subservice_service_time_and_more', '2024-03-03 13:48:52.323726'),
(148, 'store', '0120_alter_order_payment_status_alter_order_status', '2024-03-03 13:48:52.341784'),
(149, 'gardner', '0006_subservice_photo', '2024-03-03 14:17:23.780893'),
(150, 'store', '0121_alter_order_payment_status_alter_order_status', '2024-03-03 14:17:23.817727'),
(151, 'store', '0122_alter_caretips_instructions_and_more', '2024-03-03 14:32:54.665755'),
(152, 'store', '0002_alter_order_payment_status_alter_order_status', '2024-03-17 12:55:13.208910'),
(153, 'store', '0003_alter_order_payment_status_alter_order_status', '2024-03-17 12:55:28.151817'),
(154, 'gardner', '0007_alter_subservice_service_time', '2024-03-17 13:06:11.022418'),
(155, 'gardner', '0008_alter_subservice_service_time', '2024-03-17 13:06:11.070480'),
(156, 'gardner', '0009_alter_subservice_service_time', '2024-03-17 13:06:11.110349'),
(157, 'gardner', '0010_booking', '2024-03-17 13:06:11.167008'),
(158, 'gardner', '0011_alter_booking_s_name', '2024-03-17 13:06:11.271676'),
(159, 'gardner', '0012_booking_c_offer_amount', '2024-03-17 13:06:11.290077'),
(160, 'gardner', '0013_rename_c_area_booking_area_and_more', '2024-03-17 13:06:12.391606'),
(161, 'store', '0123_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.425063'),
(162, 'store', '0124_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.442356'),
(163, 'store', '0125_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.470271'),
(164, 'store', '0126_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.488366'),
(165, 'store', '0127_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.501899'),
(166, 'store', '0128_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.533617'),
(167, 'store', '0129_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.586940'),
(168, 'store', '0130_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.597047'),
(169, 'store', '0131_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.613315'),
(170, 'store', '0132_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.642561'),
(171, 'store', '0133_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.660743'),
(172, 'store', '0134_alter_order_status', '2024-03-17 13:06:12.667854'),
(173, 'store', '0135_alter_order_status_payment', '2024-03-17 13:06:12.747455'),
(174, 'store', '0136_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.756655'),
(175, 'store', '0137_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:12.788589'),
(176, 'store', '0138_alter_order_payment_status_alter_order_status', '2024-03-17 13:06:22.310788'),
(177, 'gardner', '0002_remove_gardner_service_and_more', '2024-03-18 17:48:10.066071'),
(178, 'gardner', '0003_initial', '2024-03-18 17:48:10.389788'),
(179, 'gardner', '0014_merge_20240318_2317', '2024-03-18 17:48:10.392068'),
(180, 'store', '0004_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.420325'),
(181, 'store', '0005_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.449142'),
(182, 'store', '0006_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.480801'),
(183, 'store', '0007_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.561527'),
(184, 'store', '0008_alter_order_status', '2024-03-18 17:48:10.579610'),
(185, 'store', '0009_alter_order_status', '2024-03-18 17:48:10.606194'),
(186, 'store', '0010_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.640534'),
(187, 'store', '0011_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.671874'),
(188, 'store', '0012_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.700869'),
(189, 'store', '0013_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.745017'),
(190, 'store', '0014_alter_order_status', '2024-03-18 17:48:10.748554'),
(191, 'store', '0015_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.795535'),
(192, 'store', '0016_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.833202'),
(193, 'store', '0017_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.858887'),
(194, 'store', '0018_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.906345'),
(195, 'store', '0019_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.939987'),
(196, 'store', '0020_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:10.972777'),
(197, 'store', '0021_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:11.018130'),
(198, 'store', '0022_alter_order_payment_status_alter_order_status', '2024-03-18 17:48:11.051354'),
(199, 'store', '0139_merge_20240318_2317', '2024-03-18 17:48:11.058243'),
(200, 'store', '0140_alter_order_payment_status_alter_order_status_and_more', '2024-03-19 03:36:10.565203'),
(201, 'gardner', '0015_booking_status', '2024-03-19 17:23:19.331349'),
(202, 'store', '0141_alter_order_payment_status_alter_order_status', '2024-03-19 17:23:19.358133'),
(203, 'gardner', '0016_alter_booking_status', '2024-03-21 14:01:42.220785'),
(204, 'store', '0142_rename_user_image_customeruser_image_and_more', '2024-03-21 14:01:42.268055'),
(205, 'store', '0143_rename_image_customeruser_user_image_and_more', '2024-03-21 14:17:14.948024'),
(206, 'gardner', '0017_alter_booking_status', '2024-03-23 16:21:07.640667'),
(207, 'store', '0144_review_update_at_alter_order_payment_status_and_more', '2024-03-23 16:21:07.687998'),
(208, 'store', '0145_order_update_at_orderitem_update_at_and_more', '2024-03-23 16:22:28.502265'),
(209, 'article', '0006_alter_article_update_on', '2024-04-16 14:09:44.289753'),
(210, 'gardner', '0018_alter_booking_status', '2024-04-16 14:09:44.304845'),
(211, 'gardner', '0019_alter_booking_status', '2024-04-16 14:09:44.328950'),
(212, 'gardner', '0020_alter_booking_status', '2024-04-16 14:09:44.342334'),
(213, 'gardner', '0021_alter_booking_status', '2024-04-16 14:09:44.358298'),
(214, 'gardner', '0022_alter_booking_status', '2024-04-16 14:09:44.376470'),
(215, 'gardner', '0023_alter_booking_status', '2024-04-16 14:09:44.407711'),
(216, 'gardner', '0024_alter_booking_status', '2024-04-16 14:09:44.424073'),
(217, 'gardner', '0025_alter_booking_status', '2024-04-16 14:09:44.436935'),
(218, 'gardner', '0026_alter_booking_status', '2024-04-16 14:09:44.452582'),
(219, 'gardner', '0027_alter_booking_status', '2024-04-16 14:09:44.468199'),
(220, 'gardner', '0028_alter_booking_status', '2024-04-16 14:09:44.485154'),
(221, 'gardner', '0029_alter_booking_status', '2024-04-16 14:09:44.515624'),
(222, 'gardner', '0030_alter_booking_status', '2024-04-16 14:09:44.531367'),
(223, 'gardner', '0031_alter_booking_status', '2024-04-16 14:09:44.550950'),
(224, 'gardner', '0032_alter_booking_status', '2024-04-16 14:09:44.572787'),
(225, 'gardner', '0033_alter_booking_status', '2024-04-16 14:09:44.595001'),
(226, 'gardner', '0034_alter_booking_status', '2024-04-16 14:09:44.611086'),
(227, 'gardner', '0035_alter_booking_status', '2024-04-16 14:09:44.627146'),
(228, 'gardner', '0036_alter_booking_status', '2024-04-16 14:09:44.645991'),
(229, 'gardner', '0037_alter_booking_status', '2024-04-16 14:09:44.667727'),
(230, 'gardner', '0038_alter_booking_status', '2024-04-16 14:09:44.690519'),
(231, 'store', '0146_city_state_rename_created_order_created_at_and_more', '2024-04-16 14:09:47.284685'),
(232, 'gardner', '0039_alter_booking_status', '2024-04-17 04:56:13.589745'),
(233, 'store', '0147_alter_order_status_alter_payment_status_and_more', '2024-04-17 04:56:13.621081'),
(234, 'gardner', '0040_alter_booking_status', '2024-04-17 04:57:25.162474'),
(235, 'store', '0148_alter_order_status_alter_payment_status', '2024-04-17 04:57:25.178249'),
(236, 'gardner', '0041_alter_booking_status', '2024-04-17 05:04:48.827748'),
(237, 'store', '0149_alter_order_status_alter_payment_order_and_more', '2024-04-17 05:04:49.412200'),
(238, 'gardner', '0042_alter_booking_status_delete_gardnerbooking', '2024-04-17 08:34:46.593863'),
(239, 'store', '0150_alter_order_status_alter_order_update_at_and_more', '2024-04-17 08:34:46.640738'),
(240, 'gardner', '0043_remove_subservice_offer_price_and_more', '2024-04-17 08:53:41.922002'),
(241, 'store', '0151_alter_order_status_alter_payment_status', '2024-04-17 08:53:41.962975'),
(242, 'store', '0152_alter_order_status_alter_payment_status', '2024-04-17 09:45:04.164017'),
(243, 'store', '0153_alter_order_status_alter_payment_status', '2024-04-17 09:45:04.195017'),
(244, 'store', '0154_alter_order_status_alter_payment_status', '2024-04-17 09:45:04.229424'),
(245, 'store', '0155_alter_order_status_alter_payment_status', '2024-04-17 09:45:04.259724'),
(246, 'store', '0156_alter_order_status_alter_payment_status', '2024-04-17 09:45:04.284609'),
(247, 'store', '0157_alter_order_status_alter_payment_status', '2024-04-17 09:45:04.300250'),
(248, 'store', '0158_alter_order_status_alter_payment_status', '2024-04-17 09:51:52.587784'),
(249, 'store', '0159_alter_order_status_alter_payment_status', '2024-04-17 09:57:28.561791'),
(250, 'store', '0160_alter_order_status', '2024-04-17 09:57:42.372218'),
(251, 'store', '0161_alter_order_status_alter_payment_status', '2024-04-17 09:57:56.793775'),
(252, 'store', '0162_alter_order_status_alter_payment_status', '2024-04-17 10:09:54.153792'),
(253, 'store', '0163_alter_order_status_alter_payment_status', '2024-04-17 10:09:54.188345'),
(254, 'store', '0164_alter_order_status_alter_payment_status', '2024-04-17 10:09:54.206030'),
(255, 'store', '0165_alter_order_status_alter_payment_status', '2024-04-17 10:09:54.235459'),
(256, 'store', '0166_alter_order_status_alter_payment_status', '2024-04-17 10:10:06.353795'),
(257, 'store', '0167_alter_order_status', '2024-04-17 10:11:46.149112'),
(258, 'gardner', '0043_gardnerbooking', '2024-04-17 10:44:01.971217'),
(259, 'gardner', '0044_alter_booking_status', '2024-04-17 10:44:01.986914'),
(260, 'gardner', '0045_alter_booking_status', '2024-04-17 10:44:02.017887'),
(261, 'gardner', '0046_alter_booking_status', '2024-04-17 10:44:02.038558'),
(262, 'gardner', '0047_alter_booking_status', '2024-04-17 10:44:17.574149'),
(263, 'store', '0002_alter_order_status_alter_payment_status', '2024-04-17 15:24:15.730761'),
(264, 'store', '0003_alter_order_status_alter_payment_status', '2024-04-17 15:24:15.746430'),
(265, 'store', '0004_alter_order_status_alter_payment_status', '2024-04-17 15:24:15.762051'),
(266, 'store', '0005_alter_order_status_alter_payment_status', '2024-04-17 15:24:15.778066'),
(267, 'store', '0006_alter_order_status_alter_payment_status', '2024-04-17 15:24:15.809355'),
(268, 'store', '0007_alter_payment_status', '2024-04-17 15:24:15.810390'),
(269, 'store', '0008_alter_order_status_alter_payment_status', '2024-04-17 15:24:15.828828'),
(271, 'store', '0009_alter_order_status_alter_payment_status', '2024-04-17 16:48:29.451736'),
(275, 'store', '0010_alter_order_status_alter_payment_status', '2024-04-17 16:50:53.674088'),
(276, 'gardner', '0001_initial', '2024-04-17 16:53:54.297302'),
(277, 'gardner', '0002_remove_subservice_offer_price_and_more', '2024-04-17 16:53:54.439564'),
(278, 'gardner', '0003_alter_booking_status', '2024-04-17 16:53:54.458428'),
(279, 'gardner', '0004_booking_gardner_alter_booking_status', '2024-04-17 16:53:54.566116'),
(280, 'store', '0011_alter_order_status_alter_payment_status', '2024-04-17 16:53:54.600569'),
(281, 'admin_tools_stats', '0001_initial', '2024-04-18 04:38:47.096836'),
(282, 'admin_tools_stats', '0002_auto_20190920_1058', '2024-04-18 04:38:47.127234'),
(283, 'admin_tools_stats', '0003_auto_20191007_0950', '2024-04-18 04:38:47.188286'),
(284, 'admin_tools_stats', '0004_dashboardstats_y_tick_format', '2024-04-18 04:38:47.204425'),
(285, 'admin_tools_stats', '0005_auto_20200203_1537', '2024-04-18 04:38:47.260127'),
(286, 'admin_tools_stats', '0006_auto_20200205_0944', '2024-04-18 04:38:47.425177'),
(287, 'admin_tools_stats', '0007_auto_20200205_1054', '2024-04-18 04:38:47.472987'),
(288, 'admin_tools_stats', '0008_auto_20200911_1400', '2024-04-18 04:38:47.543361'),
(289, 'admin_tools_stats', '0009_auto_20200928_1003', '2024-04-18 04:38:47.573909'),
(290, 'admin_tools_stats', '0010_dashboardstats_show_to_users', '2024-04-18 04:38:47.591773'),
(291, 'admin_tools_stats', '0011_auto_20210204_1206', '2024-04-18 04:38:47.626752'),
(292, 'admin_tools_stats', '0012_auto_20210207_0859', '2024-04-18 04:38:47.649925'),
(293, 'admin_tools_stats', '0013_auto_20210221_1247', '2024-04-18 04:38:47.664002'),
(294, 'admin_tools_stats', '0014_auto_20211122_1511', '2024-04-18 04:38:47.828917'),
(295, 'admin_tools_stats', '0015_auto_20211209_0822', '2024-04-18 04:38:47.861176'),
(296, 'admin_tools_stats', '0016_dashboardstats_cache_values', '2024-04-18 04:38:47.880604'),
(297, 'admin_tools_stats', '0017_alter_dashboardstats_options_and_more', '2024-04-18 04:38:47.901762'),
(298, 'admin_tools_stats', '0018_alter_dashboardstats_options', '2024-04-18 04:38:47.905985'),
(299, 'admin_tools_stats', '0019_criteriatostatsm2m_recalculate', '2024-04-18 04:38:47.929295'),
(300, 'admin_tools_stats', '0020_alter_dashboardstats_graph_key', '2024-04-18 04:38:47.933777'),
(301, 'admin_tools_stats', '0021_auto_20230210_1102', '2024-04-18 04:38:49.870467'),
(302, 'gardner', '0005_alter_booking_status', '2024-04-18 04:38:49.884220'),
(303, 'gardner', '0006_alter_booking_status', '2024-04-18 04:38:49.902396'),
(304, 'store', '0012_alter_order_status_alter_payment_status', '2024-04-18 04:38:49.934313'),
(305, 'store', '0013_alter_order_status_alter_payment_status', '2024-04-18 04:38:50.011574'),
(306, 'gardner', '0007_alter_booking_status', '2024-04-18 05:05:33.161888'),
(307, 'store', '0014_alter_order_status_alter_payment_status', '2024-04-18 05:05:33.193544'),
(308, 'gardner', '0008_alter_booking_status', '2024-04-18 14:02:22.519905'),
(309, 'store', '0015_alter_customeruser_user_image_alter_order_city_and_more', '2024-04-18 14:02:25.052573'),
(310, 'gardner', '0009_alter_booking_status', '2024-04-18 14:35:51.998556'),
(311, 'store', '0016_alter_order_status_alter_payment_status_and_more', '2024-04-18 14:35:53.191282');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('177r6c60ssdbfg1a1qgtpgo0rczwc5yk', '.eJxVjMsOwiAQRf-FtSHQMjjj0r3fQBgeUjWQlHZl_HfbpAvdnnPufQvn16W4tafZTVFchBanX8Y-PFPdRXz4em8ytLrME8s9kYft8tZiel2P9u-g-F62NZiQRwQDCjAxAUdkQMiQyQzJ0jkGpg1pPWbFiOQt8mi1NcoOpIL4fAHQdDcH:1rzThp:4CsDOYBDboQTSxoM5wow8AW94-IYoPUyBBkA-9WKZQM', '2024-05-08 03:54:01.109779'),
('1kh7hue6xcvu87caafxqojfkbmvntizj', '.eJxVjjEOwyAMRe_CHCGS0AAZu_cMyGAItBVEgUxV795QZWg3f79n67-Ihr0GvRe36YhkJgPpfncG7MOlBvAOacnU5lS3aGhT6EkLvWV0z-vp_j0IUMJxzQSMigsvmUBplBcTopQXxYYROO9hAAejVN6hx0l43h-DsU6qQ3NKtVYlxHWNadE2wLY4MnNGWUcwFpv3VMncf3PNFZ4NHun9AWPySLw:1rgnjj:PqtZG07dCAig0pCYBAO2_iJma8XLU-RR3Oul01CFTGg', '2024-03-17 15:26:47.953164'),
('30fp159gvffw7o8vvkb50tn0tnwdvzvn', '.eJxVjMsOwiAQRf-FtSHQMjjj0r3fQBgeUjWQlHZl_HfbpAvdnnPufQvn16W4tafZTVFchBanX8Y-PFPdRXz4em8ytLrME8s9kYft8tZiel2P9u-g-F62NZiQRwQDCjAxAUdkQMiQyQzJ0jkGpg1pPWbFiOQt8mi1NcoOpIL4fAHQdDcH:1roxyD:Yo7CF38gegGvQroqos3NQCACi-pLx1sUhQ-Plg6qrfo', '2024-04-09 03:59:29.673928'),
('4thpllzfsgdka8cl8ngxd021yoclwx11', '.eJxVjE0OgyAYRO_C2hBQPgosu-8ZCL9Ca8AIrprevZq4aJfz3sy8kTZ7T3pvYdPZI4UoGn6ZNe4Vyin805S5YldL37LFZwVftuFH9WG5X92_g2RaOtbAXJwEMCAggpVgvbAgIEKUbAxc3ryz8kCUTpFYIaThwk6cckb4KIk7TlvK65rLrF0y2xyQYgSTAfncXN1LRwromXvtZkFqYhKTzxcAXEdB:1rzT8W:rXrHMkCJ1tXjBc7pVh4nx9OAW1YUnjWxO2poRA07qHA', '2024-05-08 03:17:32.200385'),
('56uyqbj4v4cnmrum8gq5pr3wgz8vf054', '.eJxVjDsOwjAQBe-ydWTZuwnrpKTnDJF_xIbIjmKnQtwdkCigfTNvHjCbo8X5qGGfk4cJNHS_mzXuHvIH-JvJSxGu5LYnKz6K-NIqLsWH9fx1_wLR1Ph-Ox0Y9ZX6QbK7avQ6oD4pDH5EiaQGtHaQjlla7Yj6USGiVYHZKrb69I7WmLYt5WV20exLgKmXQnbgU3XlyA0mQkHcQSvNrDAhkyB6vgByc0dc:1rzUC8:DaB6s9rNWrulP-qMicfAMVFa_lJrlXByaKu44V2zbyA', '2024-05-08 04:25:20.084903'),
('81qa883onng887ns34iusw4e1er1zgib', '.eJxljrtOwzAUht_FcxU5Fzs-mQCJAYkKBnbLl5PGtLEjn1RQId4dR-rQivX__tsP0-a8TvpMmHXwbGA1291q1rgjxg34TxMPqXIprjnYarNUV0rVPnk8PV29dwWToamkRefGVolOcKHQgrBeWaHEKEboGpTQe2ehSHXdjtwqBUYq28padlw2wF0pzUi46sUQfaXs9dvHOxvaHmQP_9jz_vHltazOJpp4THnB5uEwm3Aq9-ftHyFRSFHj9xLyhQ3A-e8fDSJYpg:1rocDF:u65LAUTFRvyHyAYuYuOSxLaLqJQ0d_U4RhJy5yqZ690', '2024-03-25 05:00:33.381880'),
('8ug60k8v7qxk5m0s2vk3yiiihi4vidlg', '.eJxljs1OxSAUhN-F9Q2BFhC6UhMXJt7owj3h57TF20IDNGqM7y5N7kLj8sw3M2e-kDZ7nfVeIOvg0YAoOv3WrHEXiAfwbyZOCbsUaw4WHxZ8pQWfk4fl_ur9UzCbMrc0Z27sJWeccAlWceul5ZKPfFSsA6FuvLOqSZT2I7FSKiOk7QUVjIhOEddKMxSoejOlvKfs9fPrCxoo7wjt_7GH893jU_u6mmjiJeUNuttpNWFp89djX4FSQooaPraQP9GgCDmhModtC3HSbjZ5AjQwgpvsQ3FpjxUNQhx3TdUsDfYMk-8fJWRoxA:1rog57:VVcSCrk_b5UhJcTNOwqVr3K8pA6kXxTLobvy_s2rdrk', '2024-03-25 09:08:25.248820'),
('9i1b5w7o182f6bvuqucbhm7ubnfjl36b', '.eJxVjMsOwiAQRf-FtSHQMjjj0r3fQBgeUjWQlHZl_HfbpAvdnnPufQvn16W4tafZTVFchBanX8Y-PFPdRXz4em8ytLrME8s9kYft8tZiel2P9u-g-F62NZiQRwQDCjAxAUdkQMiQyQzJ0jkGpg1pPWbFiOQt8mi1NcoOpIL4fAHQdDcH:1rzT2n:GxjI2xZjlLUSRwUpZl2BiKC8VizvPxA828cMVK2TFn8', '2024-05-08 03:11:37.849657'),
('cjxuje4icgh3s1pi2ggzt8awcxk4q9x7', '.eJxVjMsOwiAQRf-FtSHQMjjj0r3fQBgeUjWQlHZl_HfbpAvdnnPufQvn16W4tafZTVFchBanX8Y-PFPdRXz4em8ytLrME8s9kYft8tZiel2P9u-g-F62NZiQRwQDCjAxAUdkQMiQyQzJ0jkGpg1pPWbFiOQt8mi1NcoOpIL4fAHQdDcH:1roy3w:svxnRg8d23-IP8lw0M9eARib67aYeebGEr0ec6v9x2U', '2024-04-09 04:05:24.899404'),
('ds3ve9a1zoatby8qrxfjouuefn8ysh4a', '.eJxVjMsOwiAQRf-FtSHQMjjj0r3fQBgeUjWQlHZl_HfbpAvdnnPufQvn16W4tafZTVFchBanX8Y-PFPdRXz4em8ytLrME8s9kYft8tZiel2P9u-g-F62NZiQRwQDCjAxAUdkQMiQyQzJ0jkGpg1pPWbFiOQt8mi1NcoOpIL4fAHQdDcH:1rzU1p:zDx7t_orvR7yXSyjRJjC5eAWMvuEY3lR8bR47GujMVg', '2024-05-08 04:14:41.015363'),
('e1on5rufnghkz1unosthnvh84hjo6d93', '.eJxVjDsOwjAQBe_iGllZ_xJT0nMGa71e4wCypTipEHeHSCmgfTPzXiLgtpawdV7CnMRZgDj9bhHpwXUH6Y711iS1ui5zlLsiD9rltSV-Xg7376BgL3vNnrRlA3mM6AbKE6MGVAlGIDvCpJwzGCf2SDojD0QQlcHB6G_irXh_AP6gOE4:1rgl5W:AhcEFEZ2M98c2dQn7nE2GOvOlSbLS1Yt9PhXZ_IE0Ko', '2024-03-17 12:37:06.118251'),
('egezdauk36td1j7umq7gbi3ep7znyjxy', '.eJxVjDsOwjAQBe_iGllZ_xJT0nMGa71e4wCypTipEHeHSCmgfTPzXiLgtpawdV7CnMRZgDj9bhHpwXUH6Y711iS1ui5zlLsiD9rltSV-Xg7376BgL3vNnrRlA3mM6AbKE6MGVAlGIDvCpJwzGCf2SDojD0QQlcHB6G_irXh_AP6gOE4:1rgjUA:I-e_HRcZAsdX2rentNSKWyJ1XQSk7seP8rFHdvleAtY', '2024-03-17 10:54:26.677149'),
('g3xnh6cleti1vqb2k2p7gdr6b9y6gqex', '.eJxVjs0OwiAQhN-Fc0MoxfJz9O4zNFsWCmqgKfRkfHeL6UFvOzvfTOZFJthrmPbitikiMYST7vc3g3241Ay8Q1oytTnVLc60IfR0C71ldM_ryf4VBCjhSDMJgxbSKyZRzdrLEVGpi2Z8ACF64OBgUNo79DhKL_rjmK1T-sCc1m1VCXFdY1omG2BbHDGCUdYRjMXmPVVi-q-uucKTGN7U-wNj60i7:1rglOY:1lx_BE-dPgTdLy1gqZn7MdS6cME1sS7r8D22EOcNMiM', '2024-03-17 12:56:46.360438'),
('i5eqrtgqa6y919or4elze7qw0zlvfqwm', '.eJxVjMsOwiAQRf9l1g3hWUqX7v2GZmBoQQ2YQlfGf1cTF7q959zzgAWPnpajxX3JBDMoGH43j-EaywfQBctWWail79mzj8K-tLFzpXg7fd2_QMKW3m-rTJRi1VJOQXvBRyEUrXLyPDqnyTtEmgKuwVnDoxmVGIUKZMlo50dy72hL-X7PZVtCwn2LMGvO-ACUW6hH6TBLwawZoNeON5iVnZg0zxeyY0hU:1rm5el:EmQaFNbvb93Nr-7jrSD2j4JmSIlBi4icl81MZmtgYnQ', '2024-04-01 05:35:31.347040'),
('inxz5ovgcs3b71tbhyybsd7svtzn3mtq', '.eJxVjMsOwiAQRf-FtSHQMjjj0r3fQBgeUjWQlHZl_HfbpAvdnnPufQvn16W4tafZTVFchBanX8Y-PFPdRXz4em8ytLrME8s9kYft8tZiel2P9u-g-F62NZiQRwQDCjAxAUdkQMiQyQzJ0jkGpg1pPWbFiOQt8mi1NcoOpIL4fAHQdDcH:1rzTiq:sZH5IZbGKfZcnpXzmLxflzKBpeepVe7YnLsJu5mfoJY', '2024-05-08 03:55:04.223814'),
('ovv39ksyqjuixgwj42wjm6ydwtlrzxuo', '.eJxVjDsOwjAQBe_iGln-fyjpOYO167VxADlSnFSIu0OkFNC-mXkvlmBbW9pGWdJE7Mw0O_1uCPlR-g7oDv028zz3dZmQ7wo_6ODXmcrzcrh_Bw1G-9Ze26JkNUqFbFAKJ6WmqgKKEqMhjAAUMtQcvRXFOi2d1Jk8WRPRUWTvD9HnN6g:1rm69H:CyKD8JGpYbst9eZ9d6ZoSG4vtf-Y6qLfQq83djifpuU', '2024-04-01 06:07:03.992416'),
('p49trdq1s03igyai94xksukfkgn3pceo', '.eJxVjDsOwjAQBe_iGllZ_xJT0nMGa71e4wCypTipEHeHSCmgfTPzXiLgtpawdV7CnMRZgDj9bhHpwXUH6Y711iS1ui5zlLsiD9rltSV-Xg7376BgL3vNnrRlA3mM6AbKE6MGVAlGIDvCpJwzGCf2SDojD0QQlcHB6G_irXh_AP6gOE4:1rggcS:c1kDFQd-91qt9zAeHVoKeRSjQJMoxR9TcgrSxIS3WXE', '2024-03-17 07:50:48.364593'),
('qlauy91b19qaaslp2w3n9iyfz0y8x1sq', '.eJxVjDsOwjAQBe_iGllZ_xJT0nMGa71e4wCypTipEHeHSCmgfTPzXiLgtpawdV7CnMRZgDj9bhHpwXUH6Y711iS1ui5zlLsiD9rltSV-Xg7376BgL3vNnrRlA3mM6AbKE6MGVAlGIDvCpJwzGCf2SDojD0QQlcHB6G_irXh_AP6gOE4:1rgl4F:7SDz_4VViRq0HU0VTWXeIuKu1JqXI8OQDQUc6EjOnJ4', '2024-03-17 12:35:47.047897'),
('t4o3o2b5qtq4igjgboyszklbn14l40dg', '.eJxVjEEOwiAQRe_C2hCGDtC6dO8ZmpkBpWogKe3KeHfbpAvdvvf-f6uR1iWPa0vzOEV1VqBOv4xJnqnsIj6o3KuWWpZ5Yr0n-rBNX2tMr8vR_h1kanlbe4OmA0RhBk8WgB3zgIHlxjT0LtCGHbKnYJEN9xYNQqCYpBNLRn2-zwg3nA:1rm5kN:Z9xSSsZo80776h6u3mey2W34DVrem7NJlWl7kc7YfXQ', '2024-04-01 05:41:19.470965'),
('u1i0rrqh2zj57zmmsl0is1t2zivt66pu', '.eJxVjE0OgyAYRO_C2hBQPgouu-8ZCL9Ca8AIrprevZi4aJfz3sy8kdJHi-qoflfJoRlRNPwyo-3L51O4p85LwbbktieDzwq-bMWP4vx6v7p_B1HX2NfAbJgEMCAgvJFgnDAgIECQbPRc3pw1siNKp0CMEFJzYSZOOSN8lMT20xrTtqW8KBv1vng0M4LJgFyqthy5oXmEM7fS9IpmKnv6fAEAaEdB:1rx0cM:gkEE_dMfRlRTc21aLWSzj9TDn2IT9H23jXfohn_zRiQ', '2024-05-01 08:26:10.663007'),
('vk1rzcvlz0v8cx12sqrlxymnha6bocsf', '.eJxVjDsOwjAQBe_iGllZ_xJT0nMGa71e4wCypTipEHeHSCmgfTPzXiLgtpawdV7CnMRZgDj9bhHpwXUH6Y711iS1ui5zlLsiD9rltSV-Xg7376BgL3vNnrRlA3mM6AbKE6MGVAlGIDvCpJwzGCf2SDojD0QQlcHB6G_irXh_AP6gOE4:1rgm83:LqdbPyxf4n58YOmkmXKYRntMGmo_Fcyuvb-kJVsVprY', '2024-03-17 13:43:47.572146'),
('vzzmnwkf7trhefevval6sd9m54d3jmpb', '.eJxVjEEOwiAQRe_C2hCGDtC6dO8ZmpkBpWogKe3KeHfbpAvdvvf-f6uR1iWPa0vzOEV1VqBOv4xJnqnsIj6o3KuWWpZ5Yr0n-rBNX2tMr8vR_h1kanlbe4OmA0RhBk8WgB3zgIHlxjT0LtCGHbKnYJEN9xYNQqCYpBNLRn2-zwg3nA:1rls3d:lhyVSssQvIxYCoab1PkTZBtf6frM6l466TybziHTh9s', '2024-03-31 15:04:17.219866'),
('xxzbgnt6dh51zbc7acgm3yo93rdhidro', '.eJxVjEEOwiAQRe_C2hCGDtC6dO8ZmpkBpWogKe3KeHfbpAvdvvf-f6uR1iWPa0vzOEV1VqBOv4xJnqnsIj6o3KuWWpZ5Yr0n-rBNX2tMr8vR_h1kanlbe4OmA0RhBk8WgB3zgIHlxjT0LtCGHbKnYJEN9xYNQqCYpBNLRn2-zwg3nA:1rm6Bg:k0PDOsX3rWGxt8Uoz8p8XKzMMiprwYYfd_uJBGIVOe4', '2024-04-01 06:09:32.688521'),
('zux0l54hs27vb7a89nzmz6yysd3wwl1p', '.eJxVjs0OwiAQhN-Fc0MoxfJz9O4zNFsWCmqgKfRkfHeL6UFvOzvfTOZFJthrmPbitikiMYST7vc3g3241Ay8Q1oytTnVLc60IfR0C71ldM_ryf4VBCjhSDMJgxbSKyZRzdrLEVGpi2Z8ACF64OBgUNo79DhKL_rjmK1T-sCc1m1VCXFdY1omG2BbHDGCUdYRjMXmPVVi-q-uucKTGN7U-wNj60i7:1rgjIY:SyqnEaHldYgy7qjTjO22FzU5-VOPQLlljxtJlYkLLfk', '2024-03-17 10:42:26.722181');

-- --------------------------------------------------------

--
-- Table structure for table `gardner_booking`
--

CREATE TABLE `gardner_booking` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(254) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin_code` varchar(20) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` time(6) NOT NULL,
  `service_amount` decimal(10,2) NOT NULL,
  `service_offer_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `created` datetime(6) NOT NULL,
  `update` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `service_name_id` bigint(20) NOT NULL,
  `gardner_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gardner_booking`
--

INSERT INTO `gardner_booking` (`id`, `fname`, `lname`, `phone`, `email`, `area`, `city`, `state`, `pin_code`, `booking_date`, `booking_time`, `service_amount`, `service_offer_amount`, `status`, `created`, `update`, `customer_id`, `service_name_id`, `gardner_id`) VALUES
(1, 'manan', 'korpe', '9510429336', 'manankorpe2@gmail.com', 'vasna', 'Ahmedabad', 'Gujarat', '380007', '2024-04-18', '14:00:00.000000', 800.00, 749.00, 'pending', '2024-04-17 17:26:50.649688', '2024-04-17 17:26:50.649688', 1, 1, 1),
(2, 'm', 'k', '9510429336', 'manankorpe2@gmail.com', 'new vasna', 'Ahmedabad', 'Gujarat', '380007', '2024-04-18', '12:00:00.000000', 800.00, 749.00, 'pending', '2024-04-18 04:41:33.809552', '2024-04-18 04:41:33.809552', 1, 1, 1),
(3, 'manan', 'k.', '9510429336', 'manankorpe2@gmail.com', 'vejalpur', 'Ahmedabad', 'Gujarat', '380051', '2024-04-25', '14:00:00.000000', 750.00, 699.00, 'cancelled', '2024-04-18 15:02:51.299365', '2024-04-18 15:02:51.299365', 7, 3, 2),
(4, 'manan', 'k.', '9510429336', 'manankorpe2@gmail.com', 'vejalpur', 'Ahmedabad', 'Gujarat', '380007', '2024-04-25', '13:00:00.000000', 750.00, 699.00, 'completed', '2024-04-18 16:55:25.797185', '2024-04-18 16:55:25.797185', 7, 3, 2),
(5, 'manan', 'korpe', '9510429336', 'manankorpe2@gmail.com', 'vasna', 'Ahmedabad', 'Gujarat', '380051', '2024-04-19', '16:00:00.000000', 750.00, 699.00, 'pending', '2024-04-18 17:08:31.835615', '2024-04-18 17:08:31.835615', 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `gardner_gardner`
--

CREATE TABLE `gardner_gardner` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `description` longtext DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `offer_price` decimal(10,2) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `service_time` time(6) NOT NULL,
  `service_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gardner_gardner`
--

INSERT INTO `gardner_gardner` (`id`, `name`, `email`, `phone`, `description`, `is_active`, `created_at`, `updated_at`, `service_id`, `offer_price`, `photo`, `price`, `service_time`, `service_type`) VALUES
(1, 'adnan', 'manankorpe2@gmail.com', '9510429336', 'service boy', 1, '2024-04-17 17:06:15.912607', '2024-04-17 17:06:15.912607', 1, 749.00, 'media/img/GardnerService/gardener17_76104f7e-beae-43de-bb76-1fd40b001bce_750x_9Nwjkpi.png', 800.00, '02:00:00.000000', 'sowing of saplings service'),
(2, 'priti', 'manankorpe2@gmail.com', '9510429336', 'abc service', 1, '2024-04-17 17:07:31.575297', '2024-04-17 17:07:31.575297', 3, 699.00, 'media/img/GardnerService/gardnermen_oPKi7Hz.jpeg', 750.00, '01:00:00.000000', 'sevice girl');

-- --------------------------------------------------------

--
-- Table structure for table `gardner_gardnerbooking`
--

CREATE TABLE `gardner_gardnerbooking` (
  `id` bigint(20) NOT NULL,
  `c_fname` varchar(20) NOT NULL,
  `c_lname` varchar(20) NOT NULL,
  `c_phone` varchar(12) NOT NULL,
  `c_email` varchar(254) NOT NULL,
  `c_address` varchar(200) NOT NULL,
  `c_area` varchar(50) DEFAULT NULL,
  `c_city` varchar(20) NOT NULL,
  `c_state` varchar(20) NOT NULL,
  `c_pin_code` varchar(20) NOT NULL,
  `c_date` date NOT NULL,
  `c_amount` decimal(10,2) NOT NULL,
  `created` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gardner_service`
--

CREATE TABLE `gardner_service` (
  `id` bigint(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gardner_service`
--

INSERT INTO `gardner_service` (`id`, `title`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Repotting of plant', 'media/img/GardnerList/Screenshot_2024-03-04-11-06-17-13_92460851df6f172a4592fca41cc2d2e6.jpg', 1, '2024-04-17 17:01:14.490958', '2024-04-17 17:01:14.490958'),
(2, 'Grass Cutting', 'media/img/GardnerList/IMG_20240304_110727.jpg', 1, '2024-04-17 17:01:36.754340', '2024-04-17 17:01:36.754340'),
(3, 'General Gardener', 'media/img/GardnerList/IMG_20240304_110727_LcptqE9.jpg', 1, '2024-04-17 17:01:59.786444', '2024-04-17 17:01:59.786444'),
(4, 'Lwan Care', 'media/img/GardnerList/IMG_20240304_110744.jpg', 1, '2024-04-17 17:02:23.927193', '2024-04-17 17:02:23.927193');

-- --------------------------------------------------------

--
-- Table structure for table `gardner_subservice`
--

CREATE TABLE `gardner_subservice` (
  `id` bigint(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `service_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gardner_subservice`
--

INSERT INTO `gardner_subservice` (`id`, `title`, `is_active`, `created_at`, `updated_at`, `service_id`) VALUES
(1, 'sowing of saplings', 1, '2024-04-17 17:03:52.528607', '2024-04-17 17:03:52.528607', 1),
(2, 'Grass Service', 1, '2024-04-17 17:04:07.045952', '2024-04-17 17:04:07.045952', 2),
(3, 'General Service', 1, '2024-04-17 17:04:23.169797', '2024-04-17 17:04:23.169797', 3),
(4, 'Fertilization', 1, '2024-04-17 17:04:43.892130', '2024-04-17 17:04:43.892130', 4);

-- --------------------------------------------------------

--
-- Table structure for table `store_caretips`
--

CREATE TABLE `store_caretips` (
  `id` bigint(20) NOT NULL,
  `Watering` varchar(200) DEFAULT NULL,
  `Light` varchar(200) DEFAULT NULL,
  `Soil` varchar(200) DEFAULT NULL,
  `Fertilizing` varchar(200) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `Seasonal_Care` varchar(200) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `Instructions` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_caretips`
--

INSERT INTO `store_caretips` (`id`, `Watering`, `Light`, `Soil`, `Fertilizing`, `Temperature`, `Seasonal_Care`, `product_id`, `Instructions`) VALUES
(1, 'Allow soil to partially dry before watering thoroughly', 'Provide bright, indirect sunlight; avoid direct sun to prevent leaf scorching', 'Use well-draining potting mix to prevent waterlogging', 'Apply diluted balanced fertilizer monthly during the growing season', ': Maintain temperatures between 65-80°F (18-27°C), avoiding cold drafts', 'Adjust watering and feeding frequency based on seasonal growth patterns', 2, 'Rotate plant for even growth, clean leaves periodically, watch for pests, and prune as needed'),
(2, 'Keep soil consistently moist but not waterlogged; allow the top inch of soil to dry before watering again', 'Provide bright, indirect sunlight; avoid direct sun to prevent leaf burning', 'Use well-draining potting mix rich in organic matter', 'Feed with a balanced liquid fertilizer every 2-4 weeks during the growing season', 'Maintain temperatures between 65-80°F (18-27°C), avoiding cold drafts', 'Increase humidity during winter months by misting or using a humidifier; reduce watering frequency slightly in cooler months', 3, 'Dust leaves regularly, prune yellowing or damaged fronds, watch for pests like spider mites, and repot as needed to refresh soil and provide space for growth'),
(3, 'Allow soil to dry slightly between waterings, keeping it evenly moist but not soggy', 'Provide bright, indirect sunlight; avoid prolonged exposure to direct sun to prevent leaf scorching', 'Plant in well-draining potting mix with good aeration', 'Apply a balanced liquid fertilizer monthly during the growing season', 'Maintain temperatures between 65-80°F (18-27°C), avoiding cold drafts', 'Increase humidity levels during winter by misting or placing a tray of water nearby; reduce watering frequency slightly in cooler months', 4, 'Dust leaves regularly to maintain their velvety appearance, prune dead or yellowing leaves, watch for pests like mealybugs or aphids, and repot as needed to refresh soil.'),
(4, 'Water thoroughly when the top inch of soil feels dry; allow excess water to drain away to prevent root rot', 'Thrives in bright, indirect light but can tolerate low light conditions; avoid direct sunlight to prevent leaf burn', 'Use well-draining potting mix; standard indoor potting soil or a mix of peat moss, perlite, and compost works well', 'Feed with a balanced liquid fertilizer every 4-6 weeks during the growing season', 'Prefers temperatures between 60-85°F (15-29°C); protect from drafts and sudden temperature fluctuations', 'Adjust watering frequency based on seasonal growth; reduce watering slightly in winter when growth slows', 5, 'Prune regularly to encourage bushier growth, propagate by stem cuttings in water or soil, watch for pests like mealybugs or spider mites'),
(5, 'Water deeply when the top inch of soil is dry; allow excess water to drain away, but avoid waterlogging to prevent root rot', 'Requires bright, indirect sunlight; protect from direct sun to prevent leaf burn', 'Plant in well-draining, nutrient-rich soil with good aeration; a mix of potting soil, perlite, and orchid bark works well', 'Feed with a balanced liquid fertilizer every 4-6 weeks during the growing season (spring and summer); reduce frequency in fall and winter', ': Prefers temperatures between 65-75°F (18-24°C); avoid cold drafts and sudden temperature changes', 'Appreciates moderate to high humidity levels; mist leaves regularly or use a humidity tray', 6, 'In regions with cold winters, provide protection for fruit plants from freezing temperatures'),
(6, 'Keep the soil consistently moist during the growing season, especially when the plant is actively producing foliage and flowers', 'Plant rain lilies in a location that receives full sun to partial shade', 'Plant rain lilies in well-draining soil with good aeration', 'Apply a balanced, water-soluble fertilizer once a month during the growing season to promote vigorous growth and blooming', 'Rain lilies thrive in warm temperatures and can tolerate a wide range of climates', 'In spring and summer, provide regular watering and fertilization to support active growth and blooming', 7, 'Deadhead spent flowers regularly to encourage continuous blooming and prevent seed formation'),
(7, 'Keep soil evenly moist, avoiding waterlogging', 'Prefers partial shade to full sun exposure', 'Well-draining, fertile soil rich in organic matter', 'Apply a balanced fertilizer during the growing season', 'Thrives in warm climates, protect from frost', 'Reduce watering in winter, resume in spring', 8, 'Prune to shape, watch for pests, and diseases'),
(8, 'Maintain consistently moist soil', 'Prefers bright, indirect sunlight', 'Well-draining, rich soil with organic matter', 'Apply a balanced fertilizer during the growing season', 'Requires warm, humid conditions', 'Protect from cold drafts and frost', 9, 'Prune dead blooms for continuous flowering'),
(9, 'Keep soil consistently moist, avoiding waterlogging', 'Requires bright, indirect sunlight', 'Well-draining, rich in organic matter', 'Apply a balanced fertilizer monthly during the growing season', 'Thrives in warm environments, protect from cold drafts', 'Reduce watering in winter, resume in spring', 10, 'Prune dead or damaged foliage for optimal growth'),
(10, 'Maintain evenly moist soil, avoiding waterlogging', 'Prefers bright, indirect sunlight', 'Well-draining soil with organic matter', 'Apply a balanced fertilizer every 4-6 weeks during the growing season', 'Thrives in warm conditions, protect from cold drafts', 'Reduce watering in winter, resume in spring', 11, ': Trim spent flowers to encourage continuous blooming'),
(11, 'Keep soil consistently moist, but not waterlogged, especially during fruit development', 'Requires full sunlight for at least 6-8 hours daily', 'Well-draining, slightly acidic soil rich in organic matter', 'Apply a balanced fertilizer specifically formulated for citrus trees every 4-6 weeks during the growing season', 'Thrives in warm temperatures between 55-85°F (13-29°C), protect from frost', 'Reduce watering and fertilizing in winter, protect from cold temperatures', 12, 'Prune dead or diseased branches, monitor for pests like aphids or citrus leafminer, and provide regular deep watering'),
(12, 'Keep soil consistently moist, especially during flowering and fruiting stages', 'Requires full sunlight for optimal growth and fruit production', ': Well-draining loamy soil with good organic content', 'Apply balanced fertilizer with micronutrients regularly during the growing season', 'Thrives in warm climates; intolerant to frost', 'Reduce watering in winter, protect from cold temperatures', 13, 'Prune dead or diseased branches, watch for pests like scale insects, and provide regular deep watering, especially during dry periods'),
(13, 'Provide regular, deep watering to keep the soil consistently moist, especially during fruiting', ': Prefers full sun but can tolerate partial shade', 'Well-draining, fertile soil with a pH of 5.6 to 6.2', 'Apply balanced fertilizer in early spring before new growth begins', 'Thrives in cool to moderate temperatures, ideally between 60-75°F (15-24°C)', 'Prune dead or weak canes in late winter or early spring, and provide mulch in winter for protection', 14, 'Monitor for pests and diseases, support canes if necessary, and harvest ripe berries regularly to encourage continuous fruiting'),
(14, 'Provide deep, infrequent watering to establish a deep root system. Light: Requires full sun exposure for optimal growth and fruiting', 'Requires full sun exposure for optimal growth and fruiting', 'Well-draining, loamy soil with a pH between 6.0 and 6.5', 'Apply balanced fertilizer in early spring before bud break', 'Prefers warm climates with temperatures between 60-90°F (15-32°C)', 'Prune dormant vines in late winter or early spring to shape and remove dead wood', 15, 'Monitor for pests and diseases, provide support for climbing vines, and harvest grapes when ripe for best flavor'),
(15, 'Provide regular watering, especially during dry periods, to keep soil consistently moist', 'Requires full sun for optimal growth and fruit production', 'Well-draining, fertile soil with a pH between 6.0 and 7.0', 'Apply balanced fertilizer in early spring before new growth begins', 'Prefers temperate climates with winter chill hours and protection from late frost during bloom', 'Prune in late winter to remove dead or diseased wood and shape the tree', 16, 'Monitor for pests and diseases, thin fruit for larger harvest, and protect from extreme temperatures to ensure healthy growth'),
(16, 'Keep soil consistently moist, but not waterlogged; water when the top inch of soil is dry.', 'Requires full sun, at least 6-8 hours of direct sunlight per day.', 'Well-draining, nutrient-rich soil with a pH between 6.0 and 7.5', 'Apply a balanced fertilizer every 4-6 weeks during the growing season', 'Thrives in warm temperatures between 70-90°F (21-32°C)', 'Protect from frost in cooler climates; pinch off flowers to encourage leaf growth', 17, 'Regularly harvest leaves to encourage bushier growth; prune regularly to prevent flowering and promote leaf production'),
(17, 'Keep soil consistently moist, watering when the top inch of soil feels dry', 'Requires full sun, at least 6-8 hours daily', 'Well-draining, fertile soil with good aeration', 'Apply a balanced fertilizer every 4-6 weeks during the growing season', 'Thrives in warm temperatures between 70-90°F (21-32°C)', 'Protect from frost in cooler climates; pinch off flowers to encourage leaf growth', 18, 'Regularly harvest leaves to encourage bushier growth; prune regularly to prevent flowering and promote leaf production'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, 19, 'Apply a balanced fertilizer according to the plant\'s needs, typically once seedlings have established themselves and started growing'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, 20, 'Apply a balanced fertilizer according to the plant\'s needs, typically once seedlings have established themselves and started growing'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, 21, 'Apply a balanced fertilizer according to the plant\'s needs, typically once seedlings have established themselves and started growing'),
(21, NULL, NULL, NULL, NULL, NULL, NULL, 22, 'Apply a balanced fertilizer according to the plant\'s needs, typically once seedlings have established themselves and started growing'),
(22, NULL, NULL, NULL, NULL, NULL, NULL, 23, 'More is not always better when it comes to fertilizing. Overfertilization can lead to nutrient imbalances, fertilizer burn, and environmental pollution. Use fertilizers sparingly and according to recommended rates'),
(23, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'Apply fertilizer at the appropriate time according to the plant\'s growth stage and seasonal needs. For example, apply a slow-release fertilizer at the beginning of the growing season to provide nutrients gradually over time'),
(24, NULL, NULL, NULL, NULL, NULL, NULL, 25, 'Pay attention to how plants respond to fertilization. Signs of overfertilization include leaf burn, stunted growth, or excessive foliage. Adjust fertilizer application accordingly based on plant health and growth'),
(25, NULL, NULL, NULL, NULL, NULL, NULL, 26, 'Fixes atmospheric nitrogen in the root nodules of leguminous plants'),
(27, NULL, NULL, NULL, NULL, NULL, 'use at every where', 27, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_cart`
--

CREATE TABLE `store_cart` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_cart` decimal(10,2) NOT NULL,
  `total_product` int(10) UNSIGNED NOT NULL CHECK (`total_product` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_cart`
--

INSERT INTO `store_cart` (`id`, `user_id`, `total_cart`, `total_product`, `created_at`, `updated_at`) VALUES
(2, 1, 309.00, 1, '2024-04-16 14:09:44.916111', '2024-04-24 03:17:29.416834'),
(7, 7, 0.00, 0, '2024-04-18 13:47:06.921433', '2024-04-18 15:01:43.382168'),
(8, 8, 233.33, 1, '2024-04-24 03:59:02.040527', '2024-04-24 04:25:19.391147');

-- --------------------------------------------------------

--
-- Table structure for table `store_cart_item`
--

CREATE TABLE `store_cart_item` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `total_price` decimal(10,2) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `discount_price` decimal(10,2) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_cart_item`
--

INSERT INTO `store_cart_item` (`id`, `quantity`, `total_price`, `cart_id`, `product_id`, `created_at`, `discount_price`, `updated_at`) VALUES
(45, 1, 360.00, 2, 11, '2024-04-24 03:17:29.401205', 309.00, '2024-04-24 03:17:29.408816'),
(47, 1, 265.70, 8, 4, '2024-04-24 04:25:19.380939', 233.33, '2024-04-24 04:25:19.387455');

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `title`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Plants', 1, '2024-03-03 07:52:40.972241', '2024-03-03 07:52:40.972241'),
(2, 'Seeds', 1, '2024-03-03 07:54:29.308087', '2024-03-03 07:55:30.157216'),
(3, 'Fertilizers', 1, '2024-03-03 07:54:42.930555', '2024-03-03 07:55:30.156190'),
(4, 'Accessories', 1, '2024-03-03 07:55:20.611261', '2024-03-03 07:55:30.146765');

-- --------------------------------------------------------

--
-- Table structure for table `store_city`
--

CREATE TABLE `store_city` (
  `id` bigint(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `state_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_city`
--

INSERT INTO `store_city` (`id`, `city`, `is_active`, `created_at`, `updated_at`, `state_id`) VALUES
(1, 'Ahmedabad', 1, '2024-04-16 14:30:47.848595', '2024-04-16 14:30:47.848595', 1),
(2, 'Surat', 1, '2024-04-16 14:30:57.361509', '2024-04-16 14:30:57.361509', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_customeruser`
--

CREATE TABLE `store_customeruser` (
  `id` bigint(20) NOT NULL,
  `phone_one` bigint(20) DEFAULT NULL,
  `phone_second` bigint(20) DEFAULT NULL,
  `user_image` varchar(100) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_customeruser`
--

INSERT INTO `store_customeruser` (`id`, `phone_one`, `phone_second`, `user_image`, `updated_at`, `user_id`, `created_at`) VALUES
(2, 9510429336, NULL, 'media/img/profile/IMG_20220216_205329.jpg', '2024-04-24 03:12:16.292963', 1, '2024-04-16 14:09:45.024305'),
(7, 9510429336, NULL, 'static/user.png', '2024-04-18 13:56:52.014381', 7, '2024-04-18 13:47:06.921433'),
(8, 9510429336, NULL, 'static/user.png', '2024-04-24 04:22:02.210323', 8, '2024-04-24 03:59:02.043830');

-- --------------------------------------------------------

--
-- Table structure for table `store_likedproduct`
--

CREATE TABLE `store_likedproduct` (
  `id` bigint(20) NOT NULL,
  `like` tinyint(1) NOT NULL,
  `Product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_likedproduct`
--

INSERT INTO `store_likedproduct` (`id`, `like`, `Product_id`, `user_id`, `created_at`) VALUES
(7, 1, 3, 7, '2024-04-18 17:47:51.236484'),
(10, 1, 5, 1, '2024-04-18 17:51:43.586660'),
(11, 1, 8, 1, '2024-04-18 17:52:38.701059'),
(12, 1, 9, 1, '2024-04-18 17:53:04.310025'),
(15, 1, 2, 1, '2024-04-18 17:55:05.323477'),
(16, 1, 3, 1, '2024-04-23 15:31:41.728281'),
(19, 1, 16, 8, '2024-04-24 04:13:22.479249');

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` longtext NOT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pin_code` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `discount` decimal(10,2) NOT NULL,
  `shipping_charges` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `update_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_order`
--

INSERT INTO `store_order` (`id`, `fname`, `lname`, `phone`, `address`, `landmark`, `city`, `state`, `pin_code`, `amount`, `created_at`, `user_id`, `status`, `discount`, `shipping_charges`, `total_amount`, `update_at`) VALUES
(20, 'Takshil', 'Thakor', '9510429336', 'chimnbhai patel institute ', 'jodhpurgam', 'Ahmedabad', 'Gujarat', '380051', 310.00, '2024-04-18 14:05:00.840618', 7, 'delivered', 50.00, 40.00, 350.00, '2024-04-18 17:14:35.688534'),
(21, 'mayank', 'panchal', '9510429336', 'chimnbhai patel institute of', 'jodhpurgam', 'Surat', 'Gujarat', '375820', 840.00, '2024-04-18 15:01:43.356914', 7, 'on the way', 160.00, 40.00, 880.00, '2024-04-18 17:14:35.679228'),
(22, 'manan', 'korpe', '9551402936', 'vansa', 'apmc', 'Pune', 'Maharastra', '897452', 1007.33, '2024-04-18 17:31:53.113410', 1, 'delivered', 158.37, 0.00, 1007.33, '2024-04-18 17:32:35.083307'),
(23, 'manan', 'korpe', '9510429336', 'vaishali township', 'vasna', 'Ahmedabad', 'Gujarat', '380007', 1275.33, '2024-04-23 18:54:16.989849', 1, 'pending', 130.37, 0.00, 1275.33, '2024-04-23 18:54:16.989849'),
(24, 'manan', 'korpe', '9510429336', 'vaishali township', 'vasna', 'Ahmedabad', 'Gujarat', '380007', 998.00, '2024-04-23 19:06:17.278635', 1, 'delivered', 122.00, 40.00, 1038.00, '2024-04-23 19:08:07.600641'),
(25, 'virendra', 'panwar', '7894561235', 'nikol d mart', 'bhakti circle', 'Ahmedabad', 'Gujarat', '380051', 310.00, '2024-04-24 04:19:11.913015', 8, 'delivered', 50.00, 40.00, 350.00, '2024-04-24 04:20:48.902385');

-- --------------------------------------------------------

--
-- Table structure for table `store_orderbill`
--

CREATE TABLE `store_orderbill` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` longtext NOT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pin_code` varchar(50) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  `billNo` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_orderbill`
--

INSERT INTO `store_orderbill` (`id`, `fname`, `lname`, `phone`, `address`, `landmark`, `city`, `state`, `pin_code`, `order_id`, `billNo`, `created_at`) VALUES
(16, 'Takshil', 'Thakor', '9510429336', 'chimnbhai patel institute ', 'jodhpurgam', 'Ahmedabad', 'Gujarat', '380051', 20, '', '2024-04-18 14:05:00.871958'),
(17, 'mayank', 'panchal', '9510429336', 'chimnbhai patel institute of', 'jodhpurgam', 'Surat', 'Gujarat', '375820', 21, '', '2024-04-18 15:01:43.384199'),
(18, 'manan', 'korpe', '9551402936', 'vansa', 'apmc', 'Pune', 'Maharastra', '897452', 22, '', '2024-04-18 17:31:53.227990'),
(19, 'manan', 'korpe', '9510429336', 'vaishali township', 'vasna', 'Ahmedabad', 'Gujarat', '380007', 23, '', '2024-04-23 18:54:17.107215'),
(20, 'manan', 'korpe', '9510429336', 'vaishali township', 'vasna', 'Ahmedabad', 'Gujarat', '380007', 24, '', '2024-04-23 19:06:17.331741'),
(21, 'virendra', 'panwar', '7894561235', 'nikol d mart', 'bhakti circle', 'Ahmedabad', 'Gujarat', '380051', 25, '', '2024-04-24 04:19:11.957519');

-- --------------------------------------------------------

--
-- Table structure for table `store_orderitem`
--

CREATE TABLE `store_orderitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `discount_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_orderitem`
--

INSERT INTO `store_orderitem` (`id`, `quantity`, `subtotal`, `order_id`, `product_id`, `price`, `update_at`, `created_at`, `discount_price`) VALUES
(24, 2, 310.00, 20, 3, 180.00, '2024-04-18 14:05:00.846175', '2024-04-18 14:05:00.846175', 155.00),
(25, 4, 840.00, 21, 27, 250.00, '2024-04-18 15:01:43.359715', '2024-04-18 15:01:43.359715', 210.00),
(26, 3, 465.00, 22, 3, 180.00, '2024-04-18 17:31:53.132453', '2024-04-18 17:31:53.132453', 155.00),
(27, 1, 309.00, 22, 11, 360.00, '2024-04-18 17:31:53.166015', '2024-04-18 17:31:53.166015', 309.00),
(28, 1, 233.33, 22, 4, 265.70, '2024-04-18 17:31:53.196275', '2024-04-18 17:31:53.196275', 233.33),
(29, 2, 310.00, 23, 3, 180.00, '2024-04-23 18:54:17.003274', '2024-04-23 18:54:17.003274', 155.00),
(30, 1, 233.33, 23, 4, 265.70, '2024-04-23 18:54:17.041275', '2024-04-23 18:54:17.041275', 233.33),
(31, 3, 732.00, 23, 5, 260.00, '2024-04-23 18:54:17.077250', '2024-04-23 18:54:17.077250', 244.00),
(32, 2, 998.00, 24, 16, 560.00, '2024-04-23 19:06:17.296235', '2024-04-23 19:06:17.296235', 499.00),
(33, 2, 310.00, 25, 3, 180.00, '2024-04-24 04:19:11.923396', '2024-04-24 04:19:11.923396', 155.00);

-- --------------------------------------------------------

--
-- Table structure for table `store_payment`
--

CREATE TABLE `store_payment` (
  `id` bigint(20) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_payment`
--

INSERT INTO `store_payment` (`id`, `payment_method`, `payment_id`, `amount`, `created_at`, `updated_at`, `order_id`, `status`) VALUES
(18, 'COD', ' ', 350.00, '2024-04-18 14:05:00.842660', '2024-04-18 14:05:00.842660', 20, 'pending'),
(19, 'COD', ' ', 880.00, '2024-04-18 15:01:43.356914', '2024-04-18 15:01:43.356914', 21, 'pending'),
(20, 'Razorpay', 'pay_O0AVpcihWeeCPn', 1007.33, '2024-04-18 17:31:53.124764', '2024-04-18 17:31:53.124764', 22, 'Confirm'),
(21, 'Razorpay', 'pay_O2AaU9hd3pe5X0', 1275.33, '2024-04-23 18:54:16.995056', '2024-04-23 18:54:16.995056', 23, 'Confirm'),
(22, 'COD', ' ', 1038.00, '2024-04-23 19:06:17.287295', '2024-04-23 19:06:17.287295', 24, 'pending'),
(23, 'Razorpay', 'pay_O2KDCn36DzeCUq', 350.00, '2024-04-24 04:19:11.918227', '2024-04-24 04:19:11.918227', 25, 'Confirm');

-- --------------------------------------------------------

--
-- Table structure for table `store_pin_code`
--

CREATE TABLE `store_pin_code` (
  `id` bigint(20) NOT NULL,
  `pincode` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `city_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_pin_code`
--

INSERT INTO `store_pin_code` (`id`, `pincode`, `is_active`, `created_at`, `updated_at`, `city_id`) VALUES
(1, 380007, 1, '2024-04-16 14:34:20.459878', '2024-04-16 14:34:20.459878', 1),
(2, 380051, 1, '2024-04-16 14:34:29.557642', '2024-04-16 14:34:29.557642', 1),
(3, 375820, 1, '2024-04-16 14:34:36.717545', '2024-04-16 14:34:36.717545', 2),
(4, 369845, 1, '2024-04-16 14:34:43.287693', '2024-04-16 14:34:43.287693', 2);

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `offer_price` decimal(10,2) NOT NULL,
  `shipping_charges` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `title`, `product_image`, `price`, `is_active`, `create_at`, `update_at`, `category_id`, `quantity`, `rating`, `offer_price`, `shipping_charges`) VALUES
(2, 'Emerald Elegance', 'media/img/product/1_1_1.jpg', 280.00, 1, '2024-03-03 08:29:11.301909', '2024-04-24 03:14:53.711994', 1, 100, 0.0, 239.00, 40.00),
(3, 'Peaceful Palms', 'media/img/product/2.jpg', 180.00, 1, '2024-03-03 08:52:33.069638', '2024-04-24 04:19:11.925862', 1, 78, 2.5, 155.00, 40.00),
(4, 'Velvet Vibes', 'media/img/product/3.jpg', 265.70, 1, '2024-03-03 09:04:41.248078', '2024-04-23 18:54:17.047354', 1, 92, 5.0, 233.33, 40.00),
(5, 'Golden Pothos', 'media/img/product/4_11.jpg', 260.00, 1, '2024-03-03 09:34:49.149401', '2024-04-24 03:47:22.860329', 1, 997, 0.0, 244.00, 40.00),
(6, 'Fiddle Leaf Fig', 'media/img/product/5.jpeg', 240.00, 1, '2024-03-03 09:41:26.749622', '2024-03-03 09:41:26.749622', 1, 100, 0.0, 199.00, 40.00),
(7, 'Raindrop Delight', 'media/img/product/1_CclNvE9.jpg', 190.00, 1, '2024-03-03 10:28:10.003015', '2024-03-03 15:27:33.444891', 2, 99, 0.0, 149.00, 40.00),
(8, 'Misty Morning', 'media/img/product/2_4c05V62.jpg', 350.00, 1, '2024-03-03 10:38:26.627523', '2024-04-17 04:40:39.256757', 2, 97, 3.0, 319.50, 40.00),
(9, 'Monsoon Majesty', 'media/img/product/3.jpeg', 380.00, 1, '2024-03-03 10:50:13.577168', '2024-04-17 04:40:39.281354', 2, 95, 0.0, 349.00, 40.00),
(10, 'Torrential Beauty', 'media/img/product/4_On8rZsN.jpg', 180.00, 1, '2024-03-03 11:00:33.997238', '2024-03-18 05:37:13.676964', 2, 98, 0.0, 158.25, 40.00),
(11, 'Drizzle Dream', 'media/img/product/5.jpg', 360.00, 1, '2024-03-03 11:13:21.447704', '2024-04-18 17:31:53.168289', 2, 98, 4.0, 309.00, 40.00),
(12, 'Citrus x sinensis', 'media/img/product/1_GoluWpr.jpeg', 350.00, 1, '2024-03-03 11:47:59.259192', '2024-04-17 04:32:53.282681', 3, 97, 0.0, 319.00, 40.00),
(13, 'Mangifera indica', 'media/img/product/2_QKQIsvR.jpg', 380.00, 1, '2024-03-03 11:53:19.666404', '2024-03-19 06:37:13.834497', 3, 0, 0.0, 349.00, 40.00),
(14, 'Rubus idaeus', 'media/img/product/3_b2KkNCN.jpg', 390.00, 1, '2024-03-03 12:47:53.754204', '2024-03-03 13:08:20.268595', 3, 100, 0.0, 349.00, 40.00),
(15, 'Vitis vinifera', 'media/img/product/4.jpeg', 340.00, 1, '2024-03-03 12:58:37.475551', '2024-03-19 06:37:13.833497', 3, 0, 0.0, 299.00, 40.00),
(16, 'Prunus persica', 'media/img/product/55.jpg', 560.00, 1, '2024-03-03 13:07:59.409438', '2024-04-23 19:06:17.303873', 3, 98, 0.0, 499.00, 40.00),
(17, 'Ocimum basilicum', 'media/img/product/1_Wlo76NH.jpg', 270.00, 0, '2024-03-03 13:29:10.231134', '2024-03-03 13:29:10.231134', 4, 100, 0.0, 249.00, 40.00),
(18, 'Vinca minor', 'media/img/product/1_sCOZFge.jpg', 280.00, 0, '2024-03-03 13:36:45.260080', '2024-03-03 13:36:45.260080', 5, 100, 0.0, 239.00, 40.00),
(19, 'NS-2', 'media/img/product/1_qPpZeJy.jpg', 600.00, 0, '2024-03-03 13:46:21.861931', '2024-03-03 13:46:21.861931', 6, 100, 0.0, 549.00, 40.00),
(20, 'Pusa Basmati 1121', 'media/img/product/1_O0whELP.jpg', 750.00, 0, '2024-03-03 13:54:19.161692', '2024-03-03 13:54:19.161692', 7, 100, 0.0, 699.00, 40.00),
(21, 'NS-01', 'media/img/product/1.png', 670.00, 0, '2024-03-03 13:59:40.212484', '2024-03-03 13:59:40.212484', 8, 100, 0.0, 639.00, 40.00),
(22, 'FS-1', 'media/img/product/1_PG9D84O.jpg', 1200.00, 0, '2024-03-03 14:17:56.980005', '2024-03-19 06:37:13.831451', 9, 0, 0.0, 1149.00, 40.00),
(23, 'Organic fertilizers', 'media/img/product/1_BNVPdCl.jpg', 980.00, 1, '2024-03-03 14:24:58.520785', '2024-03-03 14:34:01.938546', 10, 100, 0.0, 949.00, 40.00),
(24, 'Single Superphosphate (SSP)', 'media/img/product/1_xyy4Mat.jpg', 1100.00, 0, '2024-03-03 14:40:11.627776', '2024-03-03 14:40:11.627776', 11, 100, 0.0, 1049.00, 40.00),
(25, 'Potassium Chloride', 'media/img/product/1_11Nt6MT.png', 4500.00, 0, '2024-03-03 14:45:44.026995', '2024-03-19 06:37:13.811352', 12, 0, 0.0, 4399.00, 40.00),
(26, 'Rhizobium', 'media/img/product/1_TZEzdpl.png', 1510.00, 0, '2024-03-03 14:57:36.256683', '2024-03-03 14:59:49.034221', 13, 100, 0.0, 1429.00, 40.00),
(27, 'Shovel', 'media/img/product/31JjdF660jL._AC_SR300300.jpg', 250.00, 1, '2024-03-19 06:41:38.146880', '2024-04-24 03:29:17.080639', 14, 44, 0.0, 210.00, 40.00);

-- --------------------------------------------------------

--
-- Table structure for table `store_productdetails`
--

CREATE TABLE `store_productdetails` (
  `id` bigint(20) NOT NULL,
  `common_name` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `plant_height` varchar(50) DEFAULT NULL,
  `plant_spread` varchar(50) DEFAULT NULL,
  `weigth` varchar(50) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `Compatibility` varchar(50) DEFAULT NULL,
  `Country_of_Origin` varchar(50) DEFAULT NULL,
  `Length` varchar(50) DEFAULT NULL,
  `Material` varchar(50) DEFAULT NULL,
  `Warranty` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_productdetails`
--

INSERT INTO `store_productdetails` (`id`, `common_name`, `color`, `plant_height`, `plant_spread`, `weigth`, `product_id`, `Compatibility`, `Country_of_Origin`, `Length`, `Material`, `Warranty`) VALUES
(1, 'Snake Plant', 'Dark Green', '2 feet', '1 feet', NULL, 2, 'Suitable for low-light environments', 'Nigeria', NULL, 'Ceramic pot', NULL),
(2, 'Areca Palm', 'Green', '5 feet', '3 feet', NULL, 3, 'Suitable for bright, indirect light', 'Madagascar', NULL, 'Wicker basket', NULL),
(3, 'Velvet Calathea', 'Green with purple undersides', '1.5 feet', '1 feet', NULL, 4, 'Suitable for medium to low light conditions', 'Brazil', NULL, 'Plastic pot', NULL),
(4, 'Devil\'s Ivy', 'Variegated green and yellow', '2 feet', 'Up to 10 feet', NULL, 5, 'Suitable for low to bright indirect light', 'Solomon Islands', NULL, 'Hanging basket', NULL),
(5, 'Fiddle Leaf Fig', 'Green', '5 feet', '3 feet', NULL, 6, 'Suitable for bright, indirect light', 'Western Africa', NULL, 'Clay pot', NULL),
(6, 'Rain Lily', 'White, pink , yellow', '6 inches', '4 inches', NULL, 7, 'Suitable for wet conditions', 'South America', NULL, 'Plastic pot', NULL),
(7, 'Spider Lily', 'Purple', '1 feet', '8 inches', NULL, 8, 'Suitable for moist soils', 'Southeast Asia', NULL, 'Clay pot', NULL),
(8, 'Canna Lily', 'Various(Red,yellow,orange)', '3 feet', '2 feet', NULL, 9, 'Suitable for water gardens', 'South America', NULL, 'Terra cotta pot', NULL),
(9, 'Hibiscus', 'Red', '5 feet', '4 feet', NULL, 10, 'Suitable for humid climates', 'Tropical regions worldwide', NULL, 'Plastic container', NULL),
(10, 'Elephant Ear', 'Green', '4 feet', '3 feet', NULL, 11, 'Suitable for waterlogged soils', NULL, NULL, 'Burlap-wrapped root ball', NULL),
(11, 'Orange tree', 'White flowers, orange fruits', '15 to 25 feet (4.5 to 7.5 meters)', '10 to 15 feet (3 to 4.5 meters)', NULL, 12, 'Compatible with aromatic herbs like lavender and r', 'Southeast Asia', NULL, 'Woody perennial belonging to the Rutaceae family', NULL),
(12, 'Mango tree', 'White flowers, green, yellow, or red fruits', '30 to 45 feet (9 to 14 meters)', '30 to 40 feet (9 to 12 meters)', NULL, 13, 'Compatible with nitrogen-fixing plants like legume', 'South Asia', NULL, 'Evergreen tree belonging to the Anacardiaceae fami', NULL),
(13, 'Raspberry bush', 'White flowers, red, black, or yellow fruits', '4 to 6 feet (1.2 to 1.8 meters)', '2 to 3 feet (0.6 to 0.9 meters)', NULL, 14, 'Compatible with companion plants like basil', 'Europe, Asia, and North America', NULL, 'Deciduous shrub belonging to the Rosaceae family', NULL),
(14, 'Grapevine', 'Green, red, or purple fruits', '4 to 6 feet (1.2 to 1.8 meters)', '2 to 3 feet (0.6 to 0.9 meters)', NULL, 15, 'Compatible with companion plants like basil', 'Europe, Asia, and North America', NULL, 'Deciduous shrub belonging to the Rosaceae fami', NULL),
(15, 'Peach tree', 'Pink flowers, yellow or pinkish-orange fruits', '15 to 25 feet (4.5 to 7.5 meters)', '15 to 20 feet (4.5 to 6 meters)', NULL, 16, 'Compatible with nitrogen-fixing plants like clover', 'Northwest China', NULL, 'Deciduous tree belonging to the Rosaceae family', NULL),
(16, 'Basil', 'White or lavender flowers, green leaves', '12 to 24 inches (30 to 60 cm)', '12 to 18 inches (30 to 45 cm)', NULL, 17, 'Companion plant to tomatoes, peppers, and oregano', 'India', NULL, 'Herbaceous annual belonging to the family', NULL),
(17, 'Periwinkle', 'Blue, purple, or white flowers', 'Blue, purple, or white flowers', 'Up to 18 inches (45 cm)', NULL, 18, NULL, 'Europe and Western Asia', NULL, 'Evergreen perennial belonging to the family', NULL),
(18, NULL, NULL, NULL, NULL, '500 gm', 19, NULL, 'india', NULL, NULL, '1 year'),
(19, NULL, NULL, NULL, NULL, '500 gm', 20, NULL, 'India', NULL, NULL, '1 year'),
(20, 'Wheat seeds', NULL, NULL, NULL, '500 gm', 21, NULL, 'India', NULL, NULL, '1 year'),
(21, NULL, NULL, NULL, NULL, '1 kg', 22, NULL, 'India', NULL, NULL, '1 year'),
(22, NULL, NULL, NULL, NULL, '1 kg', 23, NULL, 'India', NULL, NULL, '1 year'),
(23, NULL, NULL, NULL, NULL, '1 kg', 24, NULL, 'India', NULL, NULL, '1 year'),
(24, 'Muriate of Potash', NULL, NULL, NULL, '25 kg', 25, NULL, 'India', NULL, NULL, '2 year'),
(25, NULL, NULL, NULL, NULL, '1 kg', 26, NULL, 'India', NULL, NULL, '1 year'),
(27, 'pavdo', 'any', '10 ft', '12 ft', '1.5 kg', 27, NULL, NULL, '150', 'lakdu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_productimage`
--

CREATE TABLE `store_productimage` (
  `id` bigint(20) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `Product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_productimage`
--

INSERT INTO `store_productimage` (`id`, `img1`, `img2`, `img3`, `Product_id`) VALUES
(1, 'media/img/multi-imge/1-Snake-EmeraldStar-4HOLD_700x700.jpg', 'media/img/multi-imge/images.jpeg', 'media/img/multi-imge/PIXNIO-50696-5574x3702-1.jpg', 2),
(2, 'media/img/multi-imge/2_2.jpg', 'media/img/multi-imge/2_3.jpg', 'media/img/multi-imge/2_4.jpg', 3),
(3, 'media/img/multi-imge/3_2.jpg', 'media/img/multi-imge/3_3.jpg', 'media/img/multi-imge/3_4.jpg', 4),
(4, 'media/img/multi-imge/4_2.jpg', 'media/img/multi-imge/4_3.jpg', 'media/img/multi-imge/4_4.jpg', 5),
(5, 'media/img/multi-imge/5_2.jpeg', 'media/img/multi-imge/5_3.jpg', 'media/img/multi-imge/5_4.jpg', 6),
(6, 'media/img/multi-imge/6_2.jpg', 'media/img/multi-imge/6_3.jpg', 'media/img/multi-imge/6_4.jpg', 7),
(7, 'media/img/multi-imge/7_2.jpg', 'media/img/multi-imge/7_3.jpg', 'media/img/multi-imge/7_4.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `store_review`
--

CREATE TABLE `store_review` (
  `id` bigint(20) NOT NULL,
  `content` longtext DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `update_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_review`
--

INSERT INTO `store_review` (`id`, `content`, `rating`, `created_at`, `product_id`, `user_id`, `update_at`) VALUES
(36, 'good produc', 4, '2024-04-18 06:46:06.527093', 11, 2, '2024-04-18 06:46:06.533856'),
(38, '', 3, '2024-04-18 17:27:58.157969', 3, 7, '2024-04-18 17:27:58.164071'),
(39, 'wow majani life', 5, '2024-04-18 17:33:06.777396', 4, 2, '2024-04-18 17:33:06.785671'),
(40, 'thik chhe product', 2, '2024-04-18 17:40:53.440114', 3, 2, '2024-04-18 17:40:53.448508');

-- --------------------------------------------------------

--
-- Table structure for table `store_shippingaddress`
--

CREATE TABLE `store_shippingaddress` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `landmark` varchar(20) DEFAULT NULL,
  `pin_code` varchar(50) DEFAULT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_shippingaddress`
--

INSERT INTO `store_shippingaddress` (`id`, `fname`, `lname`, `phone`, `address`, `city`, `landmark`, `pin_code`, `create_at`, `update_at`, `user_id`, `state`) VALUES
(8, 'mayank', 'panchal', '9510429336', 'chimnbhai patel institute of', 'Surat', 'jodhpurgam', '375820', '2024-04-18 14:59:40.276248', '2024-04-18 14:59:40.276248', 7, 'Gujarat'),
(12, 'ma', 'k', '9510429336', 'vasna', 'Ahmedabad', 'man', '380007', '2024-04-24 03:56:23.247606', '2024-04-24 03:56:53.853593', 1, 'Gujarat'),
(13, 'veer', 'pawar', '7894561235', 'nikol d mart', 'Ahmedabad', 'bhakti circle', '380051', '2024-04-24 04:17:31.043523', '2024-04-24 04:17:31.043523', 8, 'Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `store_state`
--

CREATE TABLE `store_state` (
  `id` bigint(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_state`
--

INSERT INTO `store_state` (`id`, `state`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Gujarat', 1, '2024-04-16 14:30:28.991263', '2024-04-16 14:30:28.991263');

-- --------------------------------------------------------

--
-- Table structure for table `store_subcategory`
--

CREATE TABLE `store_subcategory` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_subcategory`
--

INSERT INTO `store_subcategory` (`id`, `title`, `is_active`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Indoor Plants', 1, '2024-03-03 07:56:03.323357', '2024-03-03 08:00:13.727223', 1),
(2, 'Monsoon Plants', 1, '2024-03-03 07:58:53.644217', '2024-03-03 08:00:13.724788', 1),
(3, 'Fruit Plants', 1, '2024-03-03 07:59:11.838884', '2024-03-03 08:00:13.718850', 1),
(4, 'Herbs', 1, '2024-03-03 07:59:27.303853', '2024-03-03 08:00:13.714996', 1),
(5, 'Creepers', 1, '2024-03-03 07:59:46.049072', '2024-03-03 08:00:13.708373', 1),
(6, 'Breeder Seeds', 1, '2024-03-03 08:00:56.806797', '2024-03-03 08:08:23.446159', 2),
(7, 'Certified Seeds', 1, '2024-03-03 08:01:20.778885', '2024-03-03 08:08:23.432646', 2),
(8, 'Nucleus Seeds', 1, '2024-03-03 08:01:44.122514', '2024-03-03 08:08:23.427625', 2),
(9, 'Foundation Seeds', 1, '2024-03-03 08:02:09.103341', '2024-03-03 08:02:09.103341', 2),
(10, 'Nitrogen Fertilizer', 1, '2024-03-03 08:02:48.017254', '2024-03-03 08:08:03.317845', 3),
(11, 'Phosephours Fertilizer', 1, '2024-03-03 08:03:33.177301', '2024-03-03 08:07:56.048379', 3),
(12, 'Potassium  Fertilizer', 1, '2024-03-03 08:03:57.852217', '2024-03-03 08:03:57.852217', 3),
(13, 'Bio Fertilizer', 1, '2024-03-03 08:04:20.281603', '2024-03-03 08:08:12.940692', 3),
(14, 'Gardening Tools', 1, '2024-03-03 08:04:47.115964', '2024-03-03 08:04:47.115964', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tools_stats_cachedvalue`
--
ALTER TABLE `admin_tools_stats_cachedvalue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_tools_stats_cachedvalue_stats_id_952da855_fk` (`stats_id`),
  ADD KEY `admin_tools_stats_cachedv_multiple_series_choice_id_f68b8312_fk` (`multiple_series_choice_id`);

--
-- Indexes for table `admin_tools_stats_criteriatostatsm2m`
--
ALTER TABLE `admin_tools_stats_criteriatostatsm2m`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order` (`order`),
  ADD KEY `admin_tools_stats_criteriatostatsm2m_stats_id_10bd79ea_fk` (`stats_id`),
  ADD KEY `admin_tools_stats_criteriatostatsm2m_criteria_id_bfe67f05_fk` (`criteria_id`);

--
-- Indexes for table `article_article`
--
ALTER TABLE `article_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_article_related_category_id_835eccfc_fk_store_cat` (`related_category_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `dashboard_stats`
--
ALTER TABLE `dashboard_stats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `graph_key` (`graph_key`),
  ADD KEY `dashboard_stats_graph_title_99e6d271` (`graph_title`),
  ADD KEY `dashboard_stats_default_multiseries_criteria_id_1c00740c_fk` (`default_multiseries_criteria_id`);

--
-- Indexes for table `dash_stats_criteria`
--
ALTER TABLE `dash_stats_criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dash_stats_criteria_criteria_name_7fe7ae1e` (`criteria_name`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `gardner_booking`
--
ALTER TABLE `gardner_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gardner_booking_customer_id_3baa3fbf_fk_auth_user_id` (`customer_id`),
  ADD KEY `gardner_booking_service_name_id_8a3f06df_fk_gardner_s` (`service_name_id`),
  ADD KEY `gardner_booking_gardner_id_7c82310c_fk_gardner_gardner_id` (`gardner_id`);

--
-- Indexes for table `gardner_gardner`
--
ALTER TABLE `gardner_gardner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gardner_gardner_service_id_bc9783a8_fk_gardner_subservice_id` (`service_id`);

--
-- Indexes for table `gardner_service`
--
ALTER TABLE `gardner_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gardner_subservice`
--
ALTER TABLE `gardner_subservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gardner_subservice_service_id_ed8c9bcf_fk_gardner_service_id` (`service_id`);

--
-- Indexes for table `store_caretips`
--
ALTER TABLE `store_caretips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_caretips_product_id_e779aa91_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_cart_user_id_99e99107_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_cart_item`
--
ALTER TABLE `store_cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_cart_item_cart_id_ed6ef192_fk_store_cart_id` (`cart_id`),
  ADD KEY `store_cart_item_product_id_2fdc321b_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `store_city`
--
ALTER TABLE `store_city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `city` (`city`),
  ADD KEY `store_city_state_id_6e7ab8fb_fk_store_state_id` (`state_id`);

--
-- Indexes for table `store_customeruser`
--
ALTER TABLE `store_customeruser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_customeruser_user_id_8ec2ad17_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_likedproduct`
--
ALTER TABLE `store_likedproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_likedproduct_Product_id_63cecf73_fk_store_product_id` (`Product_id`),
  ADD KEY `store_likedproduct_user_id_9da42ec1_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_user_id_ae5f7a5f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_orderbill`
--
ALTER TABLE `store_orderbill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_orderbill_order_id_0555e476_fk_store_order_id` (`order_id`);

--
-- Indexes for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  ADD KEY `store_orderitem_product_id_f2b098d4_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_payment`
--
ALTER TABLE `store_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_payment_order_id_b5ee0383` (`order_id`);

--
-- Indexes for table `store_pin_code`
--
ALTER TABLE `store_pin_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pincode` (`pincode`),
  ADD KEY `store_pin_code_city_id_08a39cb9_fk_store_city_id` (`city_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_product_category_id_574bae65_fk_store_subcategory_id` (`category_id`);

--
-- Indexes for table `store_productdetails`
--
ALTER TABLE `store_productdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_productdetails_product_id_2193b196_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_productimage`
--
ALTER TABLE `store_productimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_productimage_Product_id_1c80178b_fk_store_product_id` (`Product_id`);

--
-- Indexes for table `store_review`
--
ALTER TABLE `store_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_review_product_id_abc413b2_fk_store_product_id` (`product_id`),
  ADD KEY `store_review_user_id_cc54d86d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_shippingaddress`
--
ALTER TABLE `store_shippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_shippingaddress_user_id_c149a95a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_state`
--
ALTER TABLE `store_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `state` (`state`);

--
-- Indexes for table `store_subcategory`
--
ALTER TABLE `store_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `store_subcategory_category_id_c0eefd44_fk_store_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tools_stats_cachedvalue`
--
ALTER TABLE `admin_tools_stats_cachedvalue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_tools_stats_criteriatostatsm2m`
--
ALTER TABLE `admin_tools_stats_criteriatostatsm2m`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_article`
--
ALTER TABLE `article_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_stats`
--
ALTER TABLE `dashboard_stats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dash_stats_criteria`
--
ALTER TABLE `dash_stats_criteria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `gardner_booking`
--
ALTER TABLE `gardner_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gardner_gardner`
--
ALTER TABLE `gardner_gardner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gardner_service`
--
ALTER TABLE `gardner_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gardner_subservice`
--
ALTER TABLE `gardner_subservice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_caretips`
--
ALTER TABLE `store_caretips`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `store_cart`
--
ALTER TABLE `store_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store_cart_item`
--
ALTER TABLE `store_cart_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_city`
--
ALTER TABLE `store_city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_customeruser`
--
ALTER TABLE `store_customeruser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store_likedproduct`
--
ALTER TABLE `store_likedproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `store_orderbill`
--
ALTER TABLE `store_orderbill`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `store_payment`
--
ALTER TABLE `store_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `store_pin_code`
--
ALTER TABLE `store_pin_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `store_productdetails`
--
ALTER TABLE `store_productdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `store_productimage`
--
ALTER TABLE `store_productimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store_review`
--
ALTER TABLE `store_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `store_shippingaddress`
--
ALTER TABLE `store_shippingaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `store_state`
--
ALTER TABLE `store_state`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_subcategory`
--
ALTER TABLE `store_subcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_tools_stats_cachedvalue`
--
ALTER TABLE `admin_tools_stats_cachedvalue`
  ADD CONSTRAINT `admin_tools_stats_cachedv_multiple_series_choice_id_f68b8312_fk` FOREIGN KEY (`multiple_series_choice_id`) REFERENCES `dash_stats_criteria` (`id`),
  ADD CONSTRAINT `admin_tools_stats_cachedvalue_stats_id_952da855_fk` FOREIGN KEY (`stats_id`) REFERENCES `dashboard_stats` (`id`);

--
-- Constraints for table `admin_tools_stats_criteriatostatsm2m`
--
ALTER TABLE `admin_tools_stats_criteriatostatsm2m`
  ADD CONSTRAINT `admin_tools_stats_criteriatostatsm2m_criteria_id_bfe67f05_fk` FOREIGN KEY (`criteria_id`) REFERENCES `dash_stats_criteria` (`id`),
  ADD CONSTRAINT `admin_tools_stats_criteriatostatsm2m_stats_id_10bd79ea_fk` FOREIGN KEY (`stats_id`) REFERENCES `dashboard_stats` (`id`);

--
-- Constraints for table `article_article`
--
ALTER TABLE `article_article`
  ADD CONSTRAINT `article_article_related_category_id_835eccfc_fk_store_cat` FOREIGN KEY (`related_category_id`) REFERENCES `store_category` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dashboard_stats`
--
ALTER TABLE `dashboard_stats`
  ADD CONSTRAINT `dashboard_stats_default_multiseries_criteria_id_1c00740c_fk` FOREIGN KEY (`default_multiseries_criteria_id`) REFERENCES `admin_tools_stats_criteriatostatsm2m` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `gardner_booking`
--
ALTER TABLE `gardner_booking`
  ADD CONSTRAINT `gardner_booking_customer_id_3baa3fbf_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `gardner_booking_gardner_id_7c82310c_fk_gardner_gardner_id` FOREIGN KEY (`gardner_id`) REFERENCES `gardner_gardner` (`id`),
  ADD CONSTRAINT `gardner_booking_service_name_id_8a3f06df_fk_gardner_s` FOREIGN KEY (`service_name_id`) REFERENCES `gardner_subservice` (`id`);

--
-- Constraints for table `gardner_gardner`
--
ALTER TABLE `gardner_gardner`
  ADD CONSTRAINT `gardner_gardner_service_id_bc9783a8_fk_gardner_subservice_id` FOREIGN KEY (`service_id`) REFERENCES `gardner_subservice` (`id`);

--
-- Constraints for table `gardner_subservice`
--
ALTER TABLE `gardner_subservice`
  ADD CONSTRAINT `gardner_subservice_service_id_ed8c9bcf_fk_gardner_service_id` FOREIGN KEY (`service_id`) REFERENCES `gardner_service` (`id`);

--
-- Constraints for table `store_caretips`
--
ALTER TABLE `store_caretips`
  ADD CONSTRAINT `store_caretips_product_id_e779aa91_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD CONSTRAINT `store_cart_user_id_99e99107_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_cart_item`
--
ALTER TABLE `store_cart_item`
  ADD CONSTRAINT `store_cart_item_cart_id_ed6ef192_fk_store_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `store_cart` (`id`),
  ADD CONSTRAINT `store_cart_item_product_id_2fdc321b_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_city`
--
ALTER TABLE `store_city`
  ADD CONSTRAINT `store_city_state_id_6e7ab8fb_fk_store_state_id` FOREIGN KEY (`state_id`) REFERENCES `store_state` (`id`);

--
-- Constraints for table `store_customeruser`
--
ALTER TABLE `store_customeruser`
  ADD CONSTRAINT `store_customeruser_user_id_8ec2ad17_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_likedproduct`
--
ALTER TABLE `store_likedproduct`
  ADD CONSTRAINT `store_likedproduct_Product_id_63cecf73_fk_store_product_id` FOREIGN KEY (`Product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_likedproduct_user_id_9da42ec1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_user_id_ae5f7a5f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_orderbill`
--
ALTER TABLE `store_orderbill`
  ADD CONSTRAINT `store_orderbill_order_id_0555e476_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`);

--
-- Constraints for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  ADD CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_payment`
--
ALTER TABLE `store_payment`
  ADD CONSTRAINT `store_payment_order_id_b5ee0383_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`);

--
-- Constraints for table `store_pin_code`
--
ALTER TABLE `store_pin_code`
  ADD CONSTRAINT `store_pin_code_city_id_08a39cb9_fk_store_city_id` FOREIGN KEY (`city_id`) REFERENCES `store_city` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_store_subcategory_id` FOREIGN KEY (`category_id`) REFERENCES `store_subcategory` (`id`);

--
-- Constraints for table `store_productdetails`
--
ALTER TABLE `store_productdetails`
  ADD CONSTRAINT `store_productdetails_product_id_2193b196_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_productimage`
--
ALTER TABLE `store_productimage`
  ADD CONSTRAINT `store_productimage_Product_id_1c80178b_fk_store_product_id` FOREIGN KEY (`Product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_review`
--
ALTER TABLE `store_review`
  ADD CONSTRAINT `store_review_product_id_abc413b2_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_review_user_id_cc54d86d_fk_store_customeruser_id` FOREIGN KEY (`user_id`) REFERENCES `store_customeruser` (`id`);

--
-- Constraints for table `store_shippingaddress`
--
ALTER TABLE `store_shippingaddress`
  ADD CONSTRAINT `store_shippingaddress_user_id_c149a95a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_subcategory`
--
ALTER TABLE `store_subcategory`
  ADD CONSTRAINT `store_subcategory_category_id_c0eefd44_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
