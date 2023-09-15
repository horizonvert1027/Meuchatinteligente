-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 14, 2023 at 07:18 PM
-- Server version: 10.6.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u687661449_dallham2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `role` varchar(5) NOT NULL DEFAULT 'admin',
  `email` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uid`, `role`, `email`, `password`, `createdAt`) VALUES
(1, 'AcZd9OwIw0BCKmjZj9JxpNCRUp5hK', 'admin', 'admin@admin.com', '$2b$10$gl/0IRUQIBcDO5EKgorV5O/PHQErn2vMKEm3PiubsBNLqDAzrwINm', '2023-05-01 07:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `aibot`
--

CREATE TABLE `aibot` (
  `id` int(11) NOT NULL,
  `name` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `client_id` varchar(999) DEFAULT NULL,
  `train_data` longtext DEFAULT NULL,
  `enable_typing` int(1) NOT NULL DEFAULT 0,
  `reaction` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apikeys`
--

CREATE TABLE `apikeys` (
  `id` int(11) NOT NULL,
  `openai_keys` varchar(999) DEFAULT NULL,
  `aws_polly_id` varchar(999) DEFAULT NULL,
  `aws_polly_keys` varchar(999) DEFAULT NULL,
  `bard_ai_api` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apikeys`
--

INSERT INTO `apikeys` (`id`, `openai_keys`, `aws_polly_id`, `aws_polly_keys`, `bard_ai_api`) VALUES
(1, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_templet`
--

CREATE TABLE `chatbot_templet` (
  `id` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `title` varchar(999) DEFAULT NULL,
  `train_data` longtext NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatbot_templet`
--

INSERT INTO `chatbot_templet` (`id`, `category_id`, `title`, `train_data`, `createdAt`) VALUES
(1, 1, 'Amazon Exprt', 'You are not an amazon seo expert who works for Codeyon IT Services. You will answer like a pro Amazon expert', '2023-05-26 17:48:24'),
(2, 8, 'SEO Expert', 'Your task is to provide guidance and support to individuals aiming to optimize their websites for search engines. Utilizing your expertise, you assist them in improving their website\'s visibility, driving organic traffic, and achieving higher rankings in search engine results.', '2023-05-26 17:57:01'),
(3, 5, 'Fitness Coach', 'Imagine yourself as a fitness coach whose mission is to help individuals achieve their health and wellness goals. Through personalized training plans, nutritional advice, and motivation, you empower them to adopt a healthy lifestyle, improve fitness levels, and attain their desired physical outcomes.', '2023-05-26 17:57:25'),
(4, 6, 'Travel Guide', 'Envision yourself as a travel consultant who specializes in crafting unforgettable travel experiences. Your role involves understanding clients\' preferences and interests, suggesting destinations, planning itineraries, and offering expert advice on accommodations, activities, and attractions to ensure memorable journeys and create lifelong memories.', '2023-05-26 17:57:47'),
(5, 7, 'Tech Expert', 'Picture yourself as a technology guru who stays up-to-date with the latest advancements. You assist individuals in navigating the ever-evolving tech landscape, providing them with insights, troubleshooting support, and recommendations for the best devices, software, and solutions to meet their specific needs.', '2023-05-26 17:58:03'),
(6, 8, 'Education Expert', 'Assume the role of an educational mentor committed to empowering learners. Your goal is to facilitate knowledge acquisition, foster critical thinking, and enhance academic performance. Through personalized instruction, educational resources, and guidance, you inspire students to explore their passions, overcome challenges, and achieve academic success.', '2023-05-26 17:58:19'),
(8, 8, 'Tutior expert', 'Imagine you are a tutor providing personalized academic assistance to students.\nCompletion: As a tutor, you offer one-on-one guidance and support to students seeking academic help. You assess their strengths and weaknesses, identify areas for improvement, and develop customized lesson plans. With patience and empathy, you explain complex concepts, provide practice exercises, and monitor progress to ensure students grasp the material and achieve academic success.', '2023-05-26 17:59:26'),
(9, 8, 'School counselor', 'You are a school counselor dedicated to supporting students\' social-emotional well-being and academic success.\nCompletion: As a school counselor, you provide guidance and resources to help students navigate personal challenges, manage stress, and develop essential life skills. Through individual counseling sessions, group workshops, and proactive interventions, you promote a positive school climate and empower students to overcome obstacles, set goals, and thrive academically, socially, and emotionally.', '2023-05-26 17:59:58'),
(10, 7, 'Technology blogger', 'You are a technology blogger sharing the latest trends, news, and insights with your readers.\nCompletion: As a technology blogger, you stay updated on the latest advancements in the tech industry. Through informative articles, product reviews, and analysis, you provide your readers with valuable insights and recommendations. Your goal is to simplify complex concepts, bridge the knowledge gap, and help your audience make informed decisions about technology products and services.', '2023-05-26 18:00:27'),
(11, 7, 'Tech support', 'Imagine you are a tech support specialist assisting customers with technical issues and troubleshooting.\nCompletion: As a tech support specialist, you provide expert assistance to customers facing technical challenges. You patiently listen to their concerns, ask relevant questions, and guide them through troubleshooting steps. With clear instructions and a customer-centric approach, you help them resolve issues, restore functionality, and ensure a seamless technology experience.', '2023-05-26 18:00:40'),
(12, 7, 'Software developer', 'Picture yourself as a software developer creating innovative solutions to solve real-world problems.\nCompletion: As a software developer, you are driven by a passion for innovation and problem-solving. You analyze user requirements, design efficient algorithms, and write clean code to develop software applications. By leveraging your programming skills and industry best practices, you create intuitive and robust solutions that enhance productivity, streamline processes, and improve user experiences.', '2023-05-26 18:00:54'),
(13, 7, 'It Consultant ', 'You are an IT consultant providing businesses with strategic technology advice and solutions.\nCompletion: As an IT consultant, you collaborate with businesses to understand their goals, assess their technology needs, and develop tailored strategies. You recommend appropriate hardware, software, and IT infrastructure to optimize their operations and enhance efficiency. Your expertise in technology trends and industry standards enables you to guide businesses in making informed decisions that align with their objectives.', '2023-05-26 18:01:07'),
(14, 7, 'Tech entrepreneur', 'Imagine you are a tech entrepreneur launching a startup and bringing innovative tech products to the market.\nCompletion: As a tech entrepreneur, you identify market opportunities and develop groundbreaking tech products that address unmet needs. From conceptualization to product launch, you navigate the complexities of funding, prototyping, and market validation. With a visionary mindset and a focus on user experience, you build solutions that disrupt industries and create positive impacts in people\'s lives.', '2023-05-26 18:01:28'),
(15, 6, 'Travel blogger', 'Imagine you are a travel blogger exploring the world and sharing your adventures with your audience.\nCompletion: As a travel blogger, you embark on exciting journeys to discover new destinations, cultures, and experiences. Through captivating stories, vivid descriptions, and stunning photographs, you transport your readers to different corners of the globe. You provide travel tips, itineraries, and recommendations, inspiring others to embark on their own adventures and create unforgettable memories.', '2023-05-26 18:01:51'),
(16, 6, 'Tour guide', 'Picture yourself as a tour guide, leading groups of travelers on immersive and informative tours.\nCompletion: As a tour guide, you have in-depth knowledge of various destinations and their historical and cultural significance. You greet eager travelers, introduce them to iconic landmarks, and share fascinating stories and facts along the way. With your passion for travel and dedication to providing exceptional experiences, you ensure that each tour is educational, enjoyable, and memorable.', '2023-05-26 18:02:04'),
(17, 6, 'Travle agent', 'You are a travel agent helping clients plan their dream vacations and create unforgettable travel experiences.\nCompletion: As a travel agent, you listen attentively to your clients\' desires, preferences, and budgets. Based on their input, you craft personalized itineraries, book flights and accommodations, and arrange unique activities and excursions. Your goal is to curate exceptional travel experiences that exceed your clients\' expectations and create lifelong memories.', '2023-05-26 18:02:17'),
(18, 5, 'Personal trainer', 'Imagine you are a personal trainer dedicated to helping individuals achieve their fitness goals and lead a healthy lifestyle.\nCompletion: As a personal trainer, you guide and motivate individuals on their fitness journey. Through customized workout plans, nutritional advice, and ongoing support, you empower them to transform their bodies and improve their overall well-being. Your passion for fitness and expertise in exercise science inspire others to prioritize their health and unlock their full potential.', '2023-05-26 18:02:58'),
(19, 5, 'Fitness influencer', 'Picture yourself as a fitness influencer, sharing workout routines, healthy recipes, and wellness tips with your social media followers.\nCompletion: As a fitness influencer, you connect with a wide audience seeking inspiration and guidance on their fitness journey. Through engaging content, you demonstrate various workout routines, provide nutritious recipes, and offer valuable wellness advice. Your authenticity and dedication to a balanced and active lifestyle inspire others to prioritize their health and embrace fitness as a positive lifestyle choice.', '2023-05-26 18:03:17'),
(20, 5, 'Fitness instructor,', 'You are a group fitness instructor, leading energetic and fun-filled classes that motivate participants to stay active and enjoy exercising.\nCompletion: As a group fitness instructor, you create an inclusive and uplifting environment where participants of all fitness levels can enjoy exercise. Through dynamic workouts, upbeat music, and motivational cues, you energize and inspire individuals to push their limits and achieve their fitness goals. Your enthusiasm and passion for fitness make each class a rewarding and enjoyable experience for everyone.', '2023-05-26 18:03:36'),
(21, 5, 'Wellness coach', ' Imagine you are a wellness coach, providing guidance on holistic well-being, including physical fitness, nutrition, and mental health.\nCompletion: As a wellness coach, you take a comprehensive approach to help individuals live a balanced and fulfilling life. Through personalized coaching sessions, you address physical fitness, nutrition, stress management, and mindfulness. Your expertise and support empower individuals to make positive lifestyle changes, improve their overall well-being, and achieve optimal health.', '2023-05-26 18:04:00'),
(22, 4, 'Ecommerce entrepreneur', 'Imagine you are an ecommerce entrepreneur, running a successful online store and offering a wide range of products to customers.\nCompletion: As an ecommerce entrepreneur, you oversee every aspect of your online store, from sourcing products to managing inventory and fulfilling orders. You strive to provide exceptional customer service and create a seamless shopping experience for your customers. Your dedication to quality products, competitive pricing, and timely delivery sets you apart in the ecommerce industry.', '2023-05-26 18:04:25'),
(23, 4, 'Digital marketer specializing ', 'Picture yourself as a digital marketer specializing in ecommerce, helping businesses increase their online visibility, drive traffic, and boost sales.\nCompletion: As a digital marketer focused on ecommerce, you employ various strategies to optimize businesses\' online presence. From search engine optimization (SEO) and social media marketing to email campaigns and paid advertising, you leverage digital channels to attract targeted traffic and convert visitors into customers. Your expertise in ecommerce marketing drives revenue growth and helps businesses thrive in the competitive online marketplace.', '2023-05-26 18:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `embed_chatbot`
--

CREATE TABLE `embed_chatbot` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT 0,
  `train_data` longtext DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `bot_id` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `embed_chatbot`
--

INSERT INTO `embed_chatbot` (`id`, `uid`, `active`, `train_data`, `title`, `bot_id`, `createdAt`) VALUES
(1, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 1, 'you are now a company named codeyon it services your opening hours are 10AM to 5PM Monday to friday', 'it company', 'sU7Rjyq3Xmru80v5YV', '2023-06-14 12:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `embed_chats`
--

CREATE TABLE `embed_chats` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `user_email` varchar(999) DEFAULT NULL,
  `user_mobile` varchar(999) DEFAULT NULL,
  `user_name` varchar(999) DEFAULT NULL,
  `bot_id` varchar(999) DEFAULT NULL,
  `chat_id` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `embed_chats`
--

INSERT INTO `embed_chats` (`id`, `uid`, `user_email`, `user_mobile`, `user_name`, `bot_id`, `chat_id`, `createdAt`) VALUES
(32, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'staff@gmail.com', '9999999', 'Staff', 'sU7Rjyq3Xmru80v5YV', NULL, '2023-06-14 18:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `que` longtext DEFAULT NULL,
  `ans` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `que`, `ans`, `createdAt`) VALUES
(7, 'Does DallHam supports BardAi?', 'Yes, it allows you to chat with bard ai', '2023-05-31 10:27:31'),
(8, 'Can i train my Whatsapp bot for my business ?', 'Yes Dallham allows you to train your WhatsApp bot for your business and the WhatsApp bot will act same as your company or employee', '2023-05-31 10:28:48'),
(9, 'Can i convert my text to speech in my language?', 'Yes Dallham allows you to create your speech in your local region with natural voices', '2023-05-31 10:29:48'),
(10, 'Can i speak the Dallham will write ?', 'Yes Dallham has ability to listen your voice and convert it to text', '2023-05-31 10:30:22'),
(11, 'How wordpress bloging works ?', 'Dallham asks you for topic only and you can give numbers of articles to DallHam and the Dallham will write and post the SEO friendly articles for you automatically in the background.', '2023-05-31 10:32:10'),
(12, 'Can you Ai help me in any way ?', 'Yes, Dallham Ai has unlimited trained Ai Bots that can help you in any way.', '2023-05-31 10:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `title` varchar(999) DEFAULT NULL,
  `des` longtext DEFAULT NULL,
  `image` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `des`, `image`, `createdAt`) VALUES
(16, 'Google Bard Ai', 'First ever launched Web App with Bard Ai chatbot\r\n', '911801685529883195bard copy.png', '2023-05-31 10:44:43'),
(17, 'WhatsApp Ai Bot', 'Give Train data to Ai and set it as WhatsApp assistant Bot', '137821685530071774wa.png', '2023-05-31 10:47:51'),
(18, 'AI Image Generator', 'Give a prompt to the Ai and get your image ready in multiple pixels', '615901685530208695ai-img.png', '2023-05-31 10:50:08'),
(19, 'Wordpress Auto Bloging', 'Give topic to the Ai and The Ai will write and post the blogs on your WordPress website automatically', '278971685530342593wp.png', '2023-05-31 10:52:22'),
(20, 'Trained Chatbot', 'Chat with unlimited dedicated of Chatbot for any of your concern or suggestions', '360671685530478127chatbot.png', '2023-05-31 10:54:38'),
(21, 'Text To Speech', 'Get your text in natural voice ready in your local languages', '566991685530566453cahtbot copy.png', '2023-05-31 10:56:06'),
(22, 'Speech to text', 'Just speak which ever you want to write and the DallHam will do it for you', '953751685530687906voicetotext.png', '2023-05-31 10:58:08'),
(23, 'Direct Support', 'Get friendly support directly from your dashboard', '552241685530798666support.png', '2023-05-31 10:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `generated_images`
--

CREATE TABLE `generated_images` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `url` varchar(999) DEFAULT NULL,
  `image` varchar(999) DEFAULT NULL,
  `size` varchar(999) DEFAULT NULL,
  `prompt` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generated_images`
--

INSERT INTO `generated_images` (`id`, `uid`, `url`, `image`, `size`, `prompt`, `createdAt`) VALUES
(1, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'data:image/;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAAEACAIAAADTED8xAAAAaGVYSWZNTQAqAAAACAACknwAAgAAACkAAAAmkoYAAgAAABgAAABQAAAAAE9wZW5BSS0tMDQyYWJlZDM0MTZjOTJkMWYwNDJmNzkwYTE4NDE0ZmIAAE1hZGUgd2l0aCBPcGVuQUkgREFMTC1FAGNjNmMAAQAASURBVHgBACuB1H4BDxQA//8B//8A/v7//wAB/wD/AP8AAAIAAQIAAQEBAgP/AwIBAwIAAgP/AwEAAQIAAQIAAgIAAAEB//8B/wAA//4A//8AAAAA//8CAAAAAQABAgIBAwICAgMAAwIAAgIBAgMBAgAB//8A//8A//4A/v0A/f3//fz//v4A/v///wABAAABAAAAAAEB/wAA/wAA/wAAAQABAQMCBAUGBwgICAgKBwUIBgcIBwUKCAcJBwYJBgYKBgcIBwYIBwYIBQQHBAMEAwIFAQAB///+/f39+vv6+Pn49vn4+Pn39/f28/Tx8/Lw8/Pw+Pb2/vv8/v7/AgABAAD///8A/////wD///8AAAD/AAABAP///wD/AAAAAP4AAAEAAP////8AAAEAAQAA//8AAQAAAAAAAAAAAAAAAAAA////AQAAAAAAAAAA/wD/AAIABwwMDRATDQ0SDAwNBgUGAQIDAwAC/wAA///////+/QD//v389/ry8/bn9vjm/vr2AwL/AgMAAwP/AwQCAgICAQMBAgEBAQIAAQEAAAH/AAAAAQABAAH/AAABAQD/AAAA//8AAQH/AQEDAwECAAEAAAEAAQABAAD+/wD///8A//7//v4B//4B/v7//v4A/v7+/v4A/////wAA//8A//7//wAAAAEA/wD/AgIAAgABAwMBAwQBAgEBAgMCAgEBAAD//wAA///+/v7//v7///4A/v7///8A//8C//4B//8AAP8AAAABAAACAAAAAQABAQEBAAAA', '1685000471664_70962.png', '256x256', 'A Man walking', '2023-05-25 07:41:17'),
(2, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'data:image/;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAAEACAIAAADTED8xAAAAaGVYSWZNTQAqAAAACAACknwAAgAAACkAAAAmkoYAAgAAABgAAABQAAAAAE9wZW5BSS0tMDQyYWJlZDM0MTZjOTJkMWYwNDJmNzkwYTE4NDE0ZmIAAE1hZGUgd2l0aCBPcGVuQUkgREFMTC1FAGNjNmMAAQAASURBVHgBACuB1H4BAAAPAQEA//8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/AAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA/wEAAP8AAAAAAAAAAAAAAAAAAAAAAAEAAP8AAAAAAAD/AAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA/wD/AAABAAAAAQAAAAD//wABAQAAAAAAAAAAAAD//wABAAAAAAAAAAD/AAAAAAABAAABAAD+AQABAAAA/wEAAP8AAAAAAQAA/wEAAf8AAAAAAQEAAAAAAP8A/wAAAQAA/wAAAQAB/wAAAAH/AQAAAAAAAAAAAP///wAAAQAA/wABAAAA/wEAAf8B/wAAAQD/AAAB/wD/AAEBAAAAAQAB/wAAAAACAAH/AP8AAQAC/wEAAAECAQACAAEBAAMCAQIEAAEBAQID/wIDAQEEAAIEAQQFAwYHAQYIAAYFAwUFAAUFAAcHAQYIAAED/f39AP8A//z7Avv7//j5APz5AP36/vr4/vr5/v36AP37//38Af79AP79//39AAD+AP7//wAAAAD+Af///wAAAP8AAQEA//8AAAD/AAAA////AAD/AAAAAAD/AAAAAP8AAAD/AAEBAQD///8AAAAAAQABAAD//wAAAAAAAAAAAAD/AAAAAP8AAAEAAAAAAAD/AP8AAAAAAAEBAP8AAAD/AAABAAAAAAD/AAABAAABAQEAAP//AAABAAEAAP//AAAAAAAAAQAA/wABAAEA', '1685000474255_87985.png', '256x256', 'A Cat walking', '2023-05-25 07:41:17'),
(3, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-0TKDFe2p1hNVRyGLEqXk98TE/user-1Ub3OX76RCaY3CqTKZXc9CHg/img-81CRF92olgHhSZAu5Xbu2xzB.png?st=2023-05-25T06%3A46%3A13Z&se=2023-05-25T08%3A46%3A13Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-05-24T20%3A04%3A00Z&ske=2023-05-25T20%3A04%3A00Z&sks=b&skv=2021-08-06&sig=2twZnoiwfczuAD4QsKeGhjQHjyJOvlhHN4/xc0Q4C2w%3D', '1685000773276_41397.png', '256x256', 'Lorem lopes', '2023-05-25 07:46:16'),
(4, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-0TKDFe2p1hNVRyGLEqXk98TE/user-1Ub3OX76RCaY3CqTKZXc9CHg/img-g6u8QBkPJNc0N5LiTMroy10w.png?st=2023-05-25T06%3A49%3A21Z&se=2023-05-25T08%3A49%3A21Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-05-24T20%3A26%3A50Z&ske=2023-05-25T20%3A26%3A50Z&sks=b&skv=2021-08-06&sig=iDSw0dWhtbmXIsWyI8p3Ogqyyog8u5lAIrE/GKeGZEs%3D', '1685000961686_50261.png', '256x256', 'lorem', '2023-05-25 07:49:26'),
(5, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-0TKDFe2p1hNVRyGLEqXk98TE/user-1Ub3OX76RCaY3CqTKZXc9CHg/img-qXlUACdPjNcILbOtH61jveIf.png?st=2023-05-25T06%3A49%3A21Z&se=2023-05-25T08%3A49%3A21Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-05-24T20%3A26%3A50Z&ske=2023-05-25T20%3A26%3A50Z&sks=b&skv=2021-08-06&sig=4fWwUTXVQyTYwtw%2BdKHerQBnTgNp0pSamdfzRp2JVYc%3D', '1685000964157_43857.png', '256x256', 'text is here', '2023-05-25 07:49:26'),
(6, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-0TKDFe2p1hNVRyGLEqXk98TE/user-1Ub3OX76RCaY3CqTKZXc9CHg/img-88V6bRsbrOLleKPB3veRgrkT.png?st=2023-05-25T06%3A59%3A53Z&se=2023-05-25T08%3A59%3A53Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-05-25T06%3A23%3A41Z&ske=2023-05-26T06%3A23%3A41Z&sks=b&skv=2021-08-06&sig=lYOBSSg2IoCM1fPc1h9DCmohUMWKXzYcZCsJOFvR1UE%3D', '1685001594039_19376.png', '256x256', 'A blue color dolphin', '2023-05-25 07:59:56'),
(7, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-0TKDFe2p1hNVRyGLEqXk98TE/user-1Ub3OX76RCaY3CqTKZXc9CHg/img-Yvw2hKvlnJvaYU2tyOvElHNb.png?st=2023-05-28T09%3A58%3A51Z&se=2023-05-28T11%3A58%3A51Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-05-28T01%3A19%3A30Z&ske=2023-05-29T01%3A19%3A30Z&sks=b&skv=2021-08-06&sig=tCmmLsU0IjLmcv1Sx6LXhpkgNHWVyMc22SaINfYeMds%3D', '1685271531430_93508.png', '1024x1024', 'a man wearing cap', '2023-05-28 10:58:58'),
(8, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-0TKDFe2p1hNVRyGLEqXk98TE/user-1Ub3OX76RCaY3CqTKZXc9CHg/img-28JPGJGjWID6fsWDizeUBLTw.png?st=2023-05-28T10%3A03%3A02Z&se=2023-05-28T12%3A03%3A02Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-05-28T05%3A10%3A52Z&ske=2023-05-29T05%3A10%3A52Z&sks=b&skv=2021-08-06&sig=y8gS/a9MnEE%2BRmKz5dvzhwTUX7Jt8R6t8vEAh%2BBY4EE%3D', '1685271782827_55378.png', '256x256', 'a cyberpunk model running', '2023-05-28 11:03:08'),
(9, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-0TKDFe2p1hNVRyGLEqXk98TE/user-1Ub3OX76RCaY3CqTKZXc9CHg/img-htDrYPAEq8e2aNqMUabS1ZS0.png?st=2023-05-28T10%3A03%3A02Z&se=2023-05-28T12%3A03%3A02Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-05-28T05%3A10%3A52Z&ske=2023-05-29T05%3A10%3A52Z&sks=b&skv=2021-08-06&sig=ZN9szBFRneUerejS7gZlHR7oaKFqSJMFZL93mmoWacU%3D', '1685271785346_52891.png', '256x256', 'a cyberpunk model running', '2023-05-28 11:03:08'),
(10, 'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-0TKDFe2p1hNVRyGLEqXk98TE/user-1Ub3OX76RCaY3CqTKZXc9CHg/img-4ONr1NPIPFmhhfVUQhfdqyux.png?st=2023-05-31T11%3A30%3A26Z&se=2023-05-31T13%3A30%3A26Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-05-30T20%3A19%3A14Z&ske=2023-05-31T20%3A19%3A14Z&sks=b&skv=2021-08-06&sig=X94JBEL8CQ4s0iO6PQp/8yVOUuGQGpoS9bwUq7WrYGE%3D', '1685536226791_37576.png', '1024x1024', 'A man walking along with his laptop', '2023-05-31 12:30:32'),
(11, 'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-0TKDFe2p1hNVRyGLEqXk98TE/user-1Ub3OX76RCaY3CqTKZXc9CHg/img-aaMa19GTILVhYyVRGKIaRwra.png?st=2023-05-31T11%3A30%3A58Z&se=2023-05-31T13%3A30%3A58Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-05-30T20%3A19%3A08Z&ske=2023-05-31T20%3A19%3A08Z&sks=b&skv=2021-08-06&sig=/X4AtjtKSzNuKeetlt5Dz6ObcCihSOeIKhpEDeRpGys%3D', '1685536259148_29516.png', '1024x1024', 'a cat', '2023-05-31 12:31:11'),
(12, 'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-0TKDFe2p1hNVRyGLEqXk98TE/user-1Ub3OX76RCaY3CqTKZXc9CHg/img-trgueX3gwTpx5Jwyh0pgGu3B.png?st=2023-05-31T11%3A30%3A58Z&se=2023-05-31T13%3A30%3A58Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-05-30T20%3A19%3A08Z&ske=2023-05-31T20%3A19%3A08Z&sks=b&skv=2021-08-06&sig=AL/EK0n0ddf0T9qD4MXIWfl70XagatSKd019RH5iq14%3D', '1685536265264_52177.png', '1024x1024', 'a cat', '2023-05-31 12:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `generated_wp`
--

CREATE TABLE `generated_wp` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `link` varchar(999) DEFAULT NULL,
  `post_id` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generated_wp`
--

INSERT INTO `generated_wp` (`id`, `uid`, `link`, `post_id`, `title`, `createdAt`) VALUES
(1, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://blogham.com/the-ultimate-guide-to-making-delicious-maggie/', '167', 'The Ultimate Guide to Making Delicious Maggie&', '2023-05-26 13:56:38'),
(2, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://blogham.com/a-quick-and-easy-guide-on-how-to-make-maggie-noodles-at-home/', '170', 'A Quick and Easy Guide on How to Make Maggie Noodles at Home&#8221;', '2023-05-26 13:58:08'),
(3, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'https://blogham.com/the-ultimate-guide-on-how-to-make-delicious-maggie-in-no-time/', '173', 'The Ultimate Guide on How to Make Delicious Maggie in No Time', '2023-05-26 13:59:27'),
(5, 'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw', 'https://blogham.com/tips-for-making-perfect-fried-rice/', '180', 'Tips for Making Perfect Fried Rice', '2023-05-31 12:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `instance`
--

CREATE TABLE `instance` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `client_id` varchar(999) DEFAULT NULL,
  `qr` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `payment_mode` varchar(999) DEFAULT NULL,
  `amount` varchar(999) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `payment_mode`, `amount`, `data`, `createdAt`) VALUES
(15, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Paypal', '1000', '{\"id\":\"9HX12704SS287672D\",\"status\":\"COMPLETED\",\"intent\":\"SALE\",\"gross_total_amount\":{\"value\":\"1000.00\",\"currency\":\"USD\"},\"application_context\":{\"landing_page\":\"NONE\",\"shipping_preference\":\"GET_FROM_FILE\",\"user_action\":\"continue\"},\"purchase_units\":[{\"reference_id\":\"default\",\"description\":\"plan\",\"amount\":{\"currency\":\"USD\",\"total\":\"1000.00\"},\"payee\":{\"email\":\"sb-txykb20222329@business.example.com\",\"payee_display_metadata\":{}},\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"country_code\":\"US\",\"postal_code\":\"95131\",\"state\":\"CA\",\"type\":\"HOME_OR_WORK\"},\"payments\":{\"captures\":[{\"id\":\"2H358828FP263324B\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"1000.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"disbursement_mode\":\"INSTANT\",\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"1000.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"35.39\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"964.61\"}},\"status\":\"COMPLETED\",\"supplementary_data\":{\"related_ids\":{\"order_id\":\"9HX12704SS287672D\"}},\"create_time\":\"2023-05-29T09:45:12Z\",\"update_time\":\"2023-05-29T09:45:12Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/2H358828FP263324B\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/2H358828FP263324B/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/checkout/orders/9HX12704SS287672D\",\"rel\":\"up\",\"method\":\"GET\"}]}]},\"payment_descriptor\":\"TEST STORE\"}],\"payment_details\":{\"payment_id\":\"PAYID-MR2HIJY8TT72178J82683843\"},\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-pch47z20315408@personal.example.com\",\"payer_id\":\"PVGEBUJM8QWR2\",\"address\":{\"country_code\":\"US\"}},\"metadata\":{\"supplementary_data\":[{\"name\":\"risk_correlation_id\",\"value\":\"9HX12704SS287672D\"},{\"name\":\"external_channel\",\"value\":\"WEB\"},{\"name\":\"INITIATION_INTENT\",\"value\":\"SALE\"}]},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/checkout/orders/9HX12704SS287672D\",\"rel\":\"self\",\"method\":\"GET\"}],\"create_time\":\"2023-05-29T09:45:04Z\",\"update_time\":\"2023-05-29T09:45:12Z\",\"applicationContext\":{\"landing_page\":\"NONE\",\"shipping_preference\":\"GET_FROM_FILE\",\"user_action\":\"continue\"}}', '2023-05-29 09:45:14'),
(16, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Razorpay', '10', '{\"id\":\"pay_LvR9liI4gVjWlQ\",\"entity\":\"payment\",\"amount\":80000,\"currency\":\"INR\",\"status\":\"captured\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":true,\"description\":\"100% secured payment\",\"card_id\":null,\"bank\":\"HDFC\",\"wallet\":null,\"vpa\":null,\"email\":\"void@razorpay.com\",\"contact\":\"+919999999999\",\"notes\":[],\"fee\":1888,\"tax\":288,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"1199291\"},\"created_at\":1685354242}', '2023-05-15 09:57:32'),
(17, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Razorpay', '1000', '{\"id\":\"pay_LvRAGpIDtmrkxW\",\"entity\":\"payment\",\"amount\":8000000,\"currency\":\"INR\",\"status\":\"captured\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":true,\"description\":\"100% secured payment\",\"card_id\":null,\"bank\":\"HDFC\",\"wallet\":null,\"vpa\":null,\"email\":\"void@razorpay.com\",\"contact\":\"+919999999999\",\"notes\":[],\"fee\":188800,\"tax\":28800,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"8865748\"},\"created_at\":1685354270}', '2023-05-29 09:58:07'),
(18, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Razorpay', '10', '{\"id\":\"pay_LvRCWLVFTq4exO\",\"entity\":\"payment\",\"amount\":80000,\"currency\":\"INR\",\"status\":\"captured\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":true,\"description\":\"100% secured payment\",\"card_id\":null,\"bank\":\"HDFC\",\"wallet\":null,\"vpa\":null,\"email\":\"void@razorpay.com\",\"contact\":\"+919999999999\",\"notes\":[],\"fee\":1888,\"tax\":288,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"2102062\"},\"created_at\":1685354398}', '2023-05-29 10:00:11'),
(19, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Razorpay', '1000', '{\"id\":\"pay_LwDA6ira9TZafJ\",\"entity\":\"payment\",\"amount\":8000000,\"currency\":\"INR\",\"status\":\"captured\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":true,\"description\":\"100% secured payment\",\"card_id\":null,\"bank\":\"HDFC\",\"wallet\":null,\"vpa\":null,\"email\":\"void@razorpay.com\",\"contact\":\"+919999999999\",\"notes\":[],\"fee\":188800,\"tax\":28800,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7758590\"},\"created_at\":1685523298}', '2023-05-31 08:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `slug` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `slug`, `title`, `meta`, `content`, `createdAt`) VALUES
(5, 'about-us', 'About Us', 'About Us', '<p>Welcome to [Company Name], where we are dedicated to revolutionizing the world through artificial intelligence (AI). Our mission is to harness the power of cutting-edge AI technologies and deliver innovative solutions that transform industries, enhance experiences, and improve lives.</p><p>At [Company Name], we believe that AI has the potential to address complex challenges and unlock new possibilities across various domains. With a team of passionate AI experts, data scientists, and industry professionals, we are committed to pushing the boundaries of what AI can achieve.</p><p>Our Vision:</p><p>We envision a future where AI is seamlessly integrated into our everyday lives, driving efficiency, creativity, and sustainability. Through continuous innovation and collaboration, we strive to shape this future and empower individuals and businesses to thrive in the AI-driven era.</p><p>Our Approach:</p><p>At the core of our approach lies a deep understanding of AI technologies and their practical applications. We leverage state-of-the-art machine learning algorithms, neural networks, natural language processing, computer vision, and other AI techniques to develop intelligent systems that can learn, reason, and adapt.</p><p>We recognize that every industry and organization has unique needs and challenges. That\'s why we take a personalized approach to every project, working closely with our clients to understand their specific requirements and tailor our AI solutions accordingly. Our expertise spans across various sectors, including [list relevant industries/sectors].</p><p>What Sets Us Apart:</p><p>• Cutting-Edge Technology: We stay at the forefront of AI research and development, constantly exploring emerging technologies and techniques to offer the most advanced solutions to our clients.</p><p>• Domain Expertise: Our team comprises experts with deep industry knowledge, allowing us to deliver AI solutions that are tailored to the specific demands and nuances of different sectors.</p><p>• Innovation and Adaptability: We foster a culture of innovation and experimentation, encouraging our team to explore new ideas and approaches. We adapt quickly to evolving trends and technologies, ensuring our clients always receive the most up-to-date AI solutions.</p><p>• Ethical and Responsible AI: We are committed to ethical AI practices, ensuring fairness, transparency, and privacy in our solutions. We prioritize the responsible use of AI to ensure positive societal impact and build trust with our clients and users.</p><p>Our Commitment:</p><p>At [Company Name], we are not just about providing AI technology; we are dedicated to delivering comprehensive end-to-end solutions. From initial consultation and analysis to implementation and ongoing support, we work closely with our clients to ensure successful outcomes and long-term partnerships.</p><p>Join us on our AI journey as we shape the future together. Whether you are looking to optimize processes, automate tasks, gain valuable insights from data, or pioneer AI-driven innovation in your industry, [Company Name] is here to empower you with intelligent solutions that drive tangible results.</p><p>Contact us today to learn more about our AI services and how we can help you harness the power of AI for your organization.</p>', '2023-05-31 09:56:36'),
(6, 'use-case', 'Use Case', 'use case', '<p>At [Company Name], we leverage the power of artificial intelligence (AI) to deliver impactful solutions across a wide range of industries and sectors. Our AI technology has been successfully applied in various use cases, addressing complex challenges and driving significant improvements. Explore some of the key areas where our AI solutions have made a difference:</p><p>[Use Case 1]</p><p>[Include a brief description of the first use case, highlighting the specific problem it addresses and the benefits it brings. You can mention the industry or sector, the AI technology used, and any quantifiable outcomes achieved.]</p><p>[Use Case 2]</p><p>[Provide a description of the second use case, emphasizing its unique problem-solving capabilities and the positive impact it has had. Mention the industry or sector, the AI technology employed, and the measurable results obtained.]</p><p>[Use Case 3]</p><p>[Describe the third use case, showcasing how our AI technology has been applied to overcome challenges and achieve desired outcomes. Highlight the industry or sector, the AI techniques utilized, and any notable achievements or improvements.]</p><p>[Use Case 4]</p><p>[Present the fourth use case, illustrating how our AI solutions have brought tangible benefits to a specific industry or sector. Explain the problem solved, the AI methods applied, and the quantifiable impact achieved.]</p><p>[Use Case 5]</p><p>[Describe the fifth use case, emphasizing the unique application of our AI technology and the transformative changes it has brought. Highlight the industry or sector, the AI algorithms utilized, and any significant results or advancements.]</p><p>These use cases represent just a glimpse of the potential of AI in solving complex problems and driving innovation. At [Company Name], we continuously explore new use cases and tailor our AI solutions to meet the specific needs of different industries and organizations.</p><p>If you have a particular challenge or requirement in mind, we invite you to get in touch with our team. We would be delighted to discuss how our AI expertise can be applied to your specific use case, helping you unlock new possibilities, optimize processes, and achieve your goals.</p><p>Contact us today to explore the possibilities of AI for your industry or organization.</p>', '2023-05-31 09:57:32'),
(7, 'privacy-policy', 'Privacy Policy', 'privacy policy', '<p>At [Company Name], we take your privacy seriously and are committed to protecting the personal information you provide us. This Privacy Policy outlines how we collect, use, disclose, and store your data when you interact with our website and services. By using our website, you consent to the practices described in this policy.</p><ol><li>Information Collection:</li><li>We may collect personal information such as your name, email address, phone number, and any other information you provide voluntarily when you interact with our website, subscribe to our newsletters, or contact us for inquiries or support. Additionally, we may collect non-personal information such as IP addresses, browser information, and website usage data through cookies and similar technologies.</li><li>Use of Information:</li><li>We use the information we collect to provide and improve our services, respond to your inquiries, personalize your experience, send you relevant communications, and fulfill any contractual obligations. We may also use the information to analyze trends, conduct research, and enhance the security and performance of our website.</li><li>Data Sharing:</li><li>We do not sell, trade, or rent your personal information to third parties. However, we may share your information with trusted service providers and business partners who assist us in operating our website and delivering our services. These parties are obligated to maintain the confidentiality and security of your information.</li><li>Legal Requirements:</li><li>We may disclose your personal information if required to do so by law or in response to a valid legal request, such as a court order or government investigation.</li><li>Data Security:</li><li>We employ industry-standard security measures to protect your personal information from unauthorized access, alteration, or disclosure. However, please note that no method of transmission over the internet or electronic storage is entirely secure, and we cannot guarantee absolute security.</li><li>Third-Party Links:</li><li>Our website may contain links to third-party websites or services. Please note that this Privacy Policy does not apply to those external websites or services. We encourage you to review the privacy policies of any third-party websites you visit.</li><li>Children\'s Privacy:</li><li>Our website and services are not intended for individuals under the age of 16. We do not knowingly collect or solicit personal information from children. If we become aware that we have collected personal information from a child without parental consent, we will take steps to delete that information.</li><li>Your Rights:</li><li>You have the right to access, update, or delete the personal information we hold about you. If you wish to exercise these rights or have any questions regarding our privacy practices, please contact us using the information provided at the end of this Privacy Policy.</li><li>Changes to this Privacy Policy:</li><li>We reserve the right to update or modify this Privacy Policy from time to time. Any changes will be effective when we post the revised Privacy Policy on our website. We encourage you to review this page periodically to stay informed about our privacy practices.</li><li>Contact Us:</li><li>If you have any questions or concerns about this Privacy Policy or our data practices, please contact us at [contact email or address].</li></ol><p><br></p>', '2023-05-31 09:58:06'),
(8, 'contact-us', 'Contact Us', 'contact us', '<p>We value your feedback, inquiries, and collaboration opportunities. Please feel free to reach out to us using any of the contact methods provided below. Our team is eager to assist you and provide the information you need.</p><p>General Inquiries:</p><p>For general questions, information, or any other inquiries, please contact us via email at [contact email]. We aim to respond to your message within [response time] during our regular business hours.</p><p>Customer Support:</p><p>If you require assistance with our products or services, our dedicated customer support team is ready to help. Please reach out to our support team by emailing [support email] or calling our support hotline at [support phone number]. Our support hours are [support hours], [time zone].</p><p>Partnerships and Collaborations:</p><p>We are always interested in exploring partnerships and collaborations in the field of artificial intelligence. If you have a business proposal, partnership opportunity, or would like to discuss potential collaborations, please email us at [partnerships email]. We are excited to explore ways we can work together to create innovative AI solutions.</p><p>Career Opportunities:</p><p>If you are passionate about AI and would like to join our dynamic team, we invite you to visit our Careers page [link to careers page] for information on current job openings, internships, or opportunities to collaborate. To apply or express your interest, please follow the instructions provided on the Careers page.</p><p>Media and Press Inquiries:</p><p>For media and press inquiries, please contact our media relations team at [media email]. We are available to provide information, schedule interviews, or assist with any media-related requests.</p><p>Address:</p><p>If you prefer to contact us by mail or visit our office, our physical address is:</p><p>[Company Name]</p><p>[Street Address]</p><p>[City, State/Province, Postal Code]</p><p>[Country]</p><p>Social Media:</p><p>Connect with us on social media to stay up-to-date with our latest news, updates, and AI-related insights. You can find us on [list social media platforms with links].</p><p>We appreciate your interest in [Company Name] and look forward to hearing from you. Our team is dedicated to providing excellent service and support as we strive to make a positive impact through the power of artificial intelligence.</p>', '2023-05-31 09:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `code` varchar(999) DEFAULT NULL,
  `payment_id` longtext DEFAULT NULL,
  `payment_keys` longtext DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `other` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `active`, `code`, `payment_id`, `payment_keys`, `name`, `other`) VALUES
(1, 1, 'paypal', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Paypal', NULL),
(2, 1, 'paystack', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Paystack', NULL),
(3, 1, 'razorpay', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Razorpay', NULL),
(4, 1, 'zarnipal', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Zarnipal', NULL),
(5, 1, 'instamojo', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Instamojo', NULL),
(6, 0, 'offline', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Offline', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ping`
--

CREATE TABLE `ping` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `user_msg` longtext DEFAULT NULL,
  `admin_reply` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ping`
--

INSERT INTO `ping` (`id`, `uid`, `user_msg`, `admin_reply`, `createdAt`) VALUES
(4, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'Hello admin', 'hey man', '2023-05-28 14:02:43'),
(5, 'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw', 'hello admin I want a popcorn ', 'why are you asking me then go order online :D', '2023-05-31 12:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(999) DEFAULT NULL,
  `cost` bigint(20) NOT NULL DEFAULT 0,
  `gpt_words_limit` bigint(20) NOT NULL DEFAULT 0,
  `dalle` int(1) NOT NULL DEFAULT 0,
  `dalle_limit` bigint(20) NOT NULL DEFAULT 0,
  `dalle_size` varchar(999) DEFAULT NULL,
  `wa_bot` int(1) NOT NULL DEFAULT 0,
  `wp_auto_bloging` int(1) NOT NULL DEFAULT 0,
  `chat_in_app` int(1) NOT NULL DEFAULT 0,
  `text_to_speech` int(1) NOT NULL DEFAULT 0,
  `tts_words_limit` bigint(20) NOT NULL DEFAULT 0,
  `speech_to_text` int(1) NOT NULL DEFAULT 0,
  `allow_text_to_speech_api` int(1) NOT NULL DEFAULT 0,
  `bard_access` int(1) NOT NULL DEFAULT 0,
  `embed_chatbot` int(1) NOT NULL DEFAULT 0,
  `embed_chatbot_limit` bigint(20) NOT NULL DEFAULT 0,
  `planexpire` varchar(999) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `plan_name`, `cost`, `gpt_words_limit`, `dalle`, `dalle_limit`, `dalle_size`, `wa_bot`, `wp_auto_bloging`, `chat_in_app`, `text_to_speech`, `tts_words_limit`, `speech_to_text`, `allow_text_to_speech_api`, `bard_access`, `embed_chatbot`, `embed_chatbot_limit`, `planexpire`, `createdAt`) VALUES
(10, 'Sliver', 10, 100, 0, 0, '250x250', 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, '30', '2023-05-31 09:50:48'),
(11, 'Gold', 100, 10000, 1, 100, '250x250', 1, 0, 1, 1, 300, 1, 0, 1, 0, 0, '90', '2023-05-31 09:51:18'),
(12, 'Diamond', 1000, 100000, 1, 100, '1024x1024', 1, 1, 1, 1, 1000, 1, 0, 1, 0, 0, '365', '2023-05-31 09:51:47'),
(16, 'Embed chatbot', 100, 100, 0, 0, '250x250', 0, 0, 0, 0, 0, 0, 0, 0, 1, 100, '10', '2023-06-14 07:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `stt`
--

CREATE TABLE `stt` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stt`
--

INSERT INTO `stt` (`id`, `uid`, `text`, `createdAt`) VALUES
(1, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'hello hello hello', '2023-05-28 08:26:17'),
(2, 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'hello hello hello hello hello', '2023-05-28 08:39:41'),
(3, 'pXcJFKwoK69XWbdvAPZ7PGR5u8RAQVFw', 'Hello how are you', '2023-05-31 12:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `templet_category`
--

CREATE TABLE `templet_category` (
  `id` int(11) NOT NULL,
  `name` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templet_category`
--

INSERT INTO `templet_category` (`id`, `name`, `createdAt`) VALUES
(4, 'Ecommerce', '2023-05-26 17:56:05'),
(5, 'Fitness', '2023-05-26 17:56:11'),
(6, 'Travel', '2023-05-26 17:56:16'),
(7, 'Technology', '2023-05-26 17:56:22'),
(8, 'Education', '2023-05-26 17:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(999) DEFAULT NULL,
  `position` varchar(999) DEFAULT NULL,
  `description` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `position`, `description`, `createdAt`) VALUES
(9, 'John Smith', 'CEO', '\"Working with [Company Name] has been a game-changer for our business. Their AI-powered Text-to-Speech solution has completely transformed our customer experience. The voice quality is remarkably natural, and it has allowed us to enhance our audio content and provide personalized interactions with our users. The team at [Company Name] has been exceptional in understanding our requirements and delivering a solution that exceeds our expectations.\"', '2023-05-31 10:23:35'),
(10, 'Sarah Johnson', 'Digital Marketing Manager', '\"The WhatsApp AI bot developed by [Company Name] has revolutionized our customer support process. It handles inquiries and provides instant responses, saving our team countless hours. The bot is intelligent, capable of understanding complex queries, and provides accurate and relevant information. Our customers love the convenience and efficiency it offers, and we have seen a significant improvement in customer satisfaction. [Company Name] has been a trusted partner throughout the development and implementation process.\"', '2023-05-31 10:23:56'),
(11, 'Michael Brown', 'Blogger', '\"The Voice-to-Text feature offered by [Company Name] has been a game-changer for my content creation process. It accurately transcribes my spoken words into text, saving me hours of manual transcription work. The technology is impressive, with high accuracy and fast processing times. As a blogger, this has allowed me to focus more on crafting quality content and less on tedious administrative tasks. I highly recommend [Company Name]\'s Voice-to-Text solution to any content creator looking to streamline their workflow.\"', '2023-05-31 10:24:35'),
(12, 'Emily Roberts', 'Web Developer', '\"[Company Name]\'s WordPress Auto Blogging solution has been a game-changer for our clients. It automates the process of content creation and publication, significantly reducing the time and effort required to maintain a blog. The AI technology selects and curates relevant content, ensuring our clients\' websites are always updated with fresh and engaging articles. The team at [Company Name] has been fantastic to work with, providing excellent support and customization options tailored to our clients\' needs.\"', '2023-05-31 10:25:08'),
(13, 'David Thompson', 'Customer Support Manager', '\"The chatbots developed by [Company Name] have greatly improved our customer support operations. These AI-powered chatbots offer personalized assistance, answering frequently asked questions and guiding users through complex processes. Our customers appreciate the quick response times and accurate information provided by the chatbots. [Company Name] has been a reliable partner in developing and implementing chatbot solutions that have elevated our customer support to new heights.\"', '2023-05-31 10:25:41'),
(14, 'Jennifer Adams', 'Marketing Director', '\"The BARD AI Chatbot created by [Company Name] has been a game-changer for our website. It engages visitors, provides relevant recommendations, and assists them in finding the information they need quickly. The chatbot\'s conversational abilities and natural language processing make it feel like a human interaction. We have seen a significant increase in user engagement and conversion rates since implementing the BARD AI Chatbot. [Company Name]\'s expertise and support have been instrumental in our success.\"', '2023-05-31 10:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `tts`
--

CREATE TABLE `tts` (
  `id` int(11) NOT NULL,
  `filename` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `language` varchar(999) DEFAULT NULL,
  `voice` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role` varchar(5) NOT NULL DEFAULT 'user',
  `uid` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `email` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `plan` varchar(999) DEFAULT NULL,
  `planexpire` varchar(999) DEFAULT NULL,
  `gpt_words_limit` bigint(20) NOT NULL DEFAULT 0,
  `dalle_limit` bigint(20) NOT NULL DEFAULT 0,
  `tts_words_limit` bigint(20) NOT NULL DEFAULT 0,
  `wp_domain` varchar(999) DEFAULT NULL,
  `wp_email` varchar(999) DEFAULT NULL,
  `wp_token` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role`, `uid`, `name`, `email`, `password`, `plan`, `planexpire`, `gpt_words_limit`, `dalle_limit`, `tts_words_limit`, `wp_domain`, `wp_email`, `wp_token`, `createdAt`) VALUES
(9, 'user', 'RqM3YMDJxciuPr22JIww3Ve4blftQ3Xc', 'user', 'user@user.com', '$2b$10$7ygkXxLLudC5Fsp7WSAVre9W6re9xVklS1LP6nBhbflruSZFWzKC2', '{\"id\":16,\"plan_name\":\"Embed chatbot\",\"cost\":100,\"gpt_words_limit\":100,\"dalle\":0,\"dalle_limit\":0,\"dalle_size\":\"250x250\",\"wa_bot\":0,\"wp_auto_bloging\":0,\"chat_in_app\":0,\"text_to_speech\":0,\"tts_words_limit\":0,\"speech_to_text\":0,\"allow_text_to_speech_api\":0,\"bard_access\":0,\"embed_chatbot\":1,\"embed_chatbot_limit\":100,\"planexpire\":\"10\",\"createdAt\":\"2023-06-14T02:11:38.000Z\"}', '2023-06-24 17:33:19', 910, 0, 0, 'https://blogham.com', 'hamidsaifi77@gmail.com', 'XQWT Ksk3 utbT IFPn GOHS WUUd', '2023-05-20 17:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `web`
--

CREATE TABLE `web` (
  `id` int(11) NOT NULL,
  `logo` varchar(999) DEFAULT NULL,
  `app_name` varchar(999) DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `youtube_video` varchar(999) DEFAULT NULL,
  `currency_symbol` varchar(999) DEFAULT NULL,
  `exchange_rate` bigint(20) DEFAULT NULL,
  `smtp_host` varchar(999) DEFAULT NULL,
  `smtp_port` varchar(999) DEFAULT NULL,
  `smtp_email` varchar(999) DEFAULT NULL,
  `smtp_pass` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web`
--

INSERT INTO `web` (`id`, `logo`, `app_name`, `meta`, `youtube_video`, `currency_symbol`, `exchange_rate`, `smtp_host`, `smtp_port`, `smtp_email`, `smtp_pass`) VALUES
(1, '522991685526550773665981676743619197logo80x80.jpg', 'Dallham', 'dallham Ai- All in one ai tool', 'https://www.youtube.com/watch?v=KUrfYMZ3DXw&ab_channel=Codeyon.com', '$', 1, 'smtp.codeyonhost.com', '465', 'info@codeyonhost.com', 'pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aibot`
--
ALTER TABLE `aibot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apikeys`
--
ALTER TABLE `apikeys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbot_templet`
--
ALTER TABLE `chatbot_templet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `embed_chatbot`
--
ALTER TABLE `embed_chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `embed_chats`
--
ALTER TABLE `embed_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generated_images`
--
ALTER TABLE `generated_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generated_wp`
--
ALTER TABLE `generated_wp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instance`
--
ALTER TABLE `instance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ping`
--
ALTER TABLE `ping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stt`
--
ALTER TABLE `stt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templet_category`
--
ALTER TABLE `templet_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tts`
--
ALTER TABLE `tts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aibot`
--
ALTER TABLE `aibot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `apikeys`
--
ALTER TABLE `apikeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chatbot_templet`
--
ALTER TABLE `chatbot_templet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `embed_chatbot`
--
ALTER TABLE `embed_chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `embed_chats`
--
ALTER TABLE `embed_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `generated_images`
--
ALTER TABLE `generated_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `generated_wp`
--
ALTER TABLE `generated_wp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `instance`
--
ALTER TABLE `instance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ping`
--
ALTER TABLE `ping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stt`
--
ALTER TABLE `stt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `templet_category`
--
ALTER TABLE `templet_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tts`
--
ALTER TABLE `tts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `web`
--
ALTER TABLE `web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
