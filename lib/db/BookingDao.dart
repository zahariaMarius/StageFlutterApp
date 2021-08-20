import 'package:hive/hive.dart';
import 'package:ripetizioni/data/model/booking/Booking.dart';
import 'package:ripetizioni/data/model/bookinglist/BookingList.dart';

class BookingDao {
  final String _boxName = 'bookingBox';

  insert(BookingList bookingList) async {
    Box box = await Hive.openBox<Booking>(_boxName);
    bookingList.data.forEach((element) async {
      await box.put(element.id, element);
    });
  }

  Future<BookingList> getAllBookings() async {
    Box<Booking> box = await Hive.openBox<Booking>(_boxName);
    BookingList bookingList = BookingList(box.values.toList());
    return bookingList;
  }

  clearBox() async {
    Box box = await Hive.openBox<Booking>(_boxName);
    await box.clear();
    await box.close();
  }

}
