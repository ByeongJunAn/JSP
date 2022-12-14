package com.keduit;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class SeoulLocationTest {

	List<SeoulLocationVO> list = new ArrayList<>();

	public static void main(String[] args) {
		SeoulLocationTest st = new SeoulLocationTest();
		st.seoulLocation();

	}

	private void seoulLocation() {

		SeoulLocationDAO dao = SeoulLocationDAO.newInstance();

		try {
			for (int i = 1; i < 37; i++) {

				Document doc = Jsoup.connect("https://korean.visitseoul.net/attractions?curPage=" + i).get();
//				System.out.println(doc);
				Elements thumb = doc.select("ul.article-list li.item div.thumb");
				Elements title = doc.select("ul.article-list li.item div.infor-element span.title");
				Elements comment = doc.select("ul.article-list li.item div.infor-element span.text-dot-d");
				Elements link = doc.select("ul.article-list li.item a");

//			System.out.println(title.get(0).text());
//			System.out.println(thumb);
//			System.out.println(comment);
//			System.out.println(link);

				for (int j = 0; j < thumb.size(); j++) {

					System.out.println("번호: " + j);
					System.out.println(title.get(j).text());
					System.out.println(comment.get(j).text());

					Document doc_s = Jsoup.connect("https://korean.visitseoul.net" + link.get(j).attr("href")).get();
					Elements address = doc_s.select("div.detail-map-infor:eq(1) dl:eq(0) dd");
					Elements phone = doc_s.select("div.border dl:eq(0) dd");
					Elements traffic = doc_s.select("div.detail-map-infor:eq(1) dl:eq(1) dd");
					Elements info = doc_s.select("div.border dl:eq(4) dd");

					System.out.println("주소: " + address.text());
					System.out.println("전화번호: " + phone.text());
					System.out.println("이용시간: " + info.text());
					System.out.println("교통 정보: " + traffic.text());
					System.out.println("------------------------------------------------------------------");

					SeoulLocationVO vo = new SeoulLocationVO();

					vo.setNo(j);
					vo.setTitle(title.get(j).text());
					vo.setTitleInfo(comment.get(j).text());
					vo.setAddress(address.text());
					vo.setInfo(info.text());
					vo.setPhone(phone.text());
					vo.setTraffic(traffic.text());

					dao.SeoulLocationInsert(vo);

				}
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
