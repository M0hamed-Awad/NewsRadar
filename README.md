# NewsRadar - News App 📰

NewsRadar is a Flutter-based news application that brings you real-time headlines across various categories, all in one place. With an intuitive design, a smooth category carousel, and in-app article viewing, NewsRadar provides a seamless browsing experience for users.

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [How to Use](#how-to-use)
- [Tech Stack](#tech-stack)
- [Installation](#installation)
- [Future Improvements](#future-improvements)

## Project Overview

NewsRadar enables users to explore news across seven main categories: **Technology, Sports, Science, Health, Entertainment, Business, and General**. Each category provides the latest headlines, and users can easily view full articles within the app itself. The app also features a dedicated Gaza News carousel for up-to-date headlines on key events.

## Features

- **Category Navigation**: Horizontally scrollable category list, each linking to a specific news section.
- **Gaza News Carousel**: Engaging image carousel for Gaza news articles, implemented with the `carousel_slider` and `smooth_page_indicator` packages.
- **Trending News List**: Vertically scrollable list of trending news articles on the homepage.
- **In-App WebView**: Clickable articles open within the app using `webview_flutter`.
- **API Integration**: Real-time news data fetched from NewsAPI via the `dio` package.

## How to Use

1. **Launch the App**: Start on the landing page and tap "Get Started" to enter the main app.
2. **Explore Categories**: Scroll through and tap on a category to view related news.
3. **Gaza News Carousel**: Swipe through the Gaza News section for important updates.
4. **Trending News**: Scroll down to view top trending news articles.
5. **Read Articles**: Tap any article to open it within the app using WebView.

## Tech Stack

- **Flutter & Dart**: For app development.
- **Dio**: For API requests.
- **NewsAPI**: Provides real-time news data.
- **carousel_slider & smooth_page_indicator**: Used to create the image carousel for Gaza news.
- **webview_flutter**: For opening articles in-app.

## Installation

To run this project locally:

1. **Clone the Repository**:

    ```bash
   git clone https://github.com/M0hamed-Awad/NewsRadar.git

2. Navigate to Project Directory:

    ```bash
    cd news_radar_app

3. Install Dependencies:

    ```bash
    flutter pub get

4. Run the App:

    ```bash
    flutter run

## Future Improvements

- Add push notifications for breaking news.
- Implement offline access to save articles for later reading.
