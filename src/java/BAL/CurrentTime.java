package BAL;

import java.util.*;

public class CurrentTime {

    public String CurrentTime() {
        Calendar calendar = new GregorianCalendar();
        String am_pm;
        int hour = calendar.get(Calendar.HOUR);
        int minute = calendar.get(Calendar.MINUTE);
        int second = calendar.get(Calendar.SECOND);

        if (calendar.get(Calendar.AM_PM) == 0) {
            am_pm = "AM";
        } else {
            am_pm = "PM";
        }
        String time = hour + ":" + minute + ":" + second + " " + am_pm;
        return time;
    }
}
