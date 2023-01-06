package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.BookingDAO;
import vn.edu.hcmuaf.fit.model.BookingModel;

import java.util.List;

public class BookingService {
    public static List<BookingModel> getListBooking(int status){
        return BookingDAO.getListBooking(status);
    }

}
