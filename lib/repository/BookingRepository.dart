import 'package:ripetizioni/data/Resuorce.dart';
import 'package:ripetizioni/data/model/bookinglist/BookingList.dart';
import 'package:ripetizioni/db/BookingDao.dart';
import 'package:ripetizioni/network/NetworkBoundResource.dart';
import 'package:ripetizioni/network/apiservice/booking/BookingApiService.dart';

class BookingRepository {
  BookingApiService _bookingApiService;
  BookingDao _bookingDao;

  BookingRepository(this._bookingApiService, this._bookingDao);

  Stream<Resource<BookingList>> getAllBookings(int userId) {
    return NetworkBoundResource<BookingList, BookingList>().asStream(
        createCall: () => _bookingApiService.getAll(userId),
        shouldFetch: (data) => true,
        loadFromDb: () => _bookingDao.getAllBookings(),
        saveCallResult: (data) => Future(() => _bookingDao.insert(data)));
  }

  Stream<Resource<BookingList>> updateBooking(int bookingId, String status) {
    return NetworkBoundResource<BookingList, BookingList>().asStream(
        createCall: () => _bookingApiService.update(bookingId, status),
        shouldFetch: (data) => true,
        loadFromDb: () => _bookingDao.getAllBookings(),
        saveCallResult: (data) => Future(() => _bookingDao.insert(data))
    );
  }

  Stream<Resource<BookingList>> bookClass(String body) {
    return NetworkBoundResource<BookingList, BookingList>().asStream(
        createCall: () => _bookingApiService.bookClass(body),
        shouldFetch: (data) => true,
        loadFromDb: () => _bookingDao.getAllBookings(),
        saveCallResult: (data) => Future(() => _bookingDao.insert(data))
    );
  }

}
