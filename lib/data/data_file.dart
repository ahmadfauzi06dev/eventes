

import '../modal/modal_card.dart';
import '../modal/modal_feature_event.dart';
import '../modal/modal_intro.dart';
import '../modal/modal_popular_event.dart';
import '../modal/modal_select_interest.dart';
import '../modal/modal_trending_event.dart';
import '../modal/model_country.dart';

class DataFile {
  static List<ModalIntro> introList = [
    ModalIntro("intro1.png", "Create, Find and Join Your Circle Now!",
        "Events can also be used at instruction set level, where they interrupts."),
    ModalIntro("intro2.png", "Participate InYour Favourite Events!",
        "Events can also be used at instruction set level, where they interrupts."),
    ModalIntro("intro3.png", "Create, Find & Join to Event Now",
        "Events can also be used at instruction set level, where they interrupts."),
    ModalIntro("intro4.png", "Let’s Get Started",
        "Sign up or login into see what’s happeing near you")
  ];

  static List<ModelCountry> countryList = [
    ModelCountry("image_fghanistan.jpg", "Afghanistan (AF)", "+93"),
    ModelCountry("image_ax.jpg", "Aland Islands (AX)", "+358"),
    ModelCountry("image_albania.jpg", "Albania (AL)", "+355"),
    ModelCountry("image_andora.jpg", "Andorra (AD)", "+376"),
    ModelCountry("image_islands.jpg", "Aland Islands (AX)", "+244"),
    ModelCountry("image_angulia.jpg", "Anguilla (AL)", "+1"),
    ModelCountry("image_armenia.jpg", "Armenia (AN)", "+374"),
    ModelCountry("image_austia.jpg", "Austria (AT)", "+372"),
  ];

  static List<ModalSelectInterest> selectInterestList = [
    
    ModalSelectInterest("i_7_swimming.png", "Swimming", "#FDEEEC", false),
    ModalSelectInterest("i_8_game.png", "Game", "#FDEEEC", false),
    ModalSelectInterest("i_9_fotball.png", "Football", "#FDEEEC", false),
    ModalSelectInterest("i_10_comedy.png", "Comedy", "#FDEEEC", false),
    ModalSelectInterest("i_11_konser.png", "Konser", "#FDEEEC", false),
    ModalSelectInterest("i_12_trophy.png", "Trophy", "#FDEEEC", false),
    ModalSelectInterest("i_1_tour.png", "Tour", "#FDEEEC", false),
    ModalSelectInterest("i_2_festival.png", "Festival", "#FDEEEC", false),
    ModalSelectInterest("i_3_study.png", "Study", "#FDEEEC", false),
    ModalSelectInterest("i_4_party.png", "Party", "#FDEEEC", false),
    ModalSelectInterest("i_5_olympic.png", "Olympic", "#FDEEEC", false),
    ModalSelectInterest("i_6_culture.png", "Culture", "#FDEEEC", false),
  ];

  static List<ModalTrendingEvent> trendingEventList = [
    ModalTrendingEvent("trending_event1.png", "20 July, 3 pm", "Business Party",
        "Mesa, New Jersey", "sponser1.png"),
    ModalTrendingEvent("trending_event2.png", "22 July, 3 pm", "Music Festival",
        "Shiloh, Hawaii", "sponser2.png"),
    ModalTrendingEvent("trending_event3.png", "25 July, 6 pm",
        "Esports on the path", "Inglewood, Maine", "sponser3.png")
  ];

  static List<ModalPopularEvent> popularEventList = [
    ModalPopularEvent(
        "popular1.png", "Art Festival", "25 July, 02:00 pm", "\$25.33"),
    ModalPopularEvent(
        "popular2.png", "Corporate Event", "27 July, 08:00 pm", "\$23.53"),
    ModalPopularEvent(
        "popular3.png", "Food Festivals", "29 July, 02:00 pm", "\$28.99")
  ];

  static List<ModalCard> cardLists = [
    ModalCard("Paypal", "xxxx xxxx xxxx 5416", "paypal.png"),
    ModalCard("Master Card", "xxxx xxxx xxxx 8624", "mastercard.png"),
    ModalCard("Visa", "xxxx xxxx xxxx 4565", "visa.png")
  ];

  static List<ModalFeatureEvent> featureEventList = [
    ModalFeatureEvent(
        "feature-image.png", "National Creativity", "California, USA"),
    ModalFeatureEvent(
        "trending_event1.png", "Business Party", "Shiloh, Hawaii"),
    ModalFeatureEvent(
        "trending_event2.png", "Esports on the path", "Inglewood, Maine"),
    ModalFeatureEvent(
        "trending_event3.png", "National Creativity", "California, USA")
  ];
}
