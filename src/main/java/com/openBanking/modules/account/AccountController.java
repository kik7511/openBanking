package com.openBanking.modules.account;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value= "/account/")
@CrossOrigin(origins = "http://localhost:8080", allowedHeaders = "*")
public class AccountController {
	
	@Autowired
	AccountServiceImpl service;
	
	public void setSearchAndPaging(AccountVo vo) throws Exception {

        vo.setParamsPaging(service.selectOneCount(vo));
    }
	
//	accountView
	@RequestMapping(value="accountView")
	public String accountView(Account dto, Model model) throws Exception {
		System.out.println("핀번호는: " + dto.getFintech_use_num());
		System.out.println("금액은: " + dto.getBalance_amt());
		System.out.println("통장이름은 : " + dto.getProduct_name());
		System.out.println("계좌번호는 : " + dto.getAccount_num_masked());
		model.addAttribute("fintech_use_num", dto.getFintech_use_num());
		model.addAttribute("balance_amt", dto.getBalance_amt());
		model.addAttribute("product_name", dto.getProduct_name());
		model.addAttribute("account_num_masked", dto.getAccount_num_masked());
		
		return "infra/account/user/accountView";
	}
	
//	accountList
	@RequestMapping(value="accountList")
	public String accountList(Model model) throws Exception {
		List<Account> list = service.selectList();
		model.addAttribute("list", list);
		List<Account> list2 = service.selectList2();
		model.addAttribute("list2", list2);
		return "infra/account/user/accountList";
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "accountRequest") public String
	 * accountRequest(@RequestParam("user_seq_no") String
	 * user_seq_no, @RequestParam("accessToken") String accessToken, Account dto)
	 * throws Exception{ URL url = new
	 * URL("https://testapi.openbanking.or.kr/v2.0/account/list"); HttpURLConnection
	 * conn = (HttpURLConnection) url.openConnection();
	 * conn.setRequestMethod("GET"); conn.setRequestProperty("Authorization",
	 * "Bearer  " + accessToken); conn.setDoOutput(true); conn.setDoInput(true);
	 * Map<String, String> params = new HashMap<String, String>();
	 * params.put("user_seq_no", user_seq_no); params.put("include_cancel_yn", "Y");
	 * params.put("sort_order ", "D");
	 * 
	 * String string_params = new String(); for (Map.Entry<String, String> elem :
	 * params.entrySet()) { string_params += (elem.getKey() + "=" + elem.getValue()
	 * + "&"); } OutputStream give = conn.getOutputStream(); DataOutputStream
	 * datagiven = new DataOutputStream(give);
	 * datagiven.write(string_params.getBytes()); datagiven.close();
	 * 
	 * 
	 * int result = conn.getResponseCode(); BufferedReader changer; if (result ==
	 * 200) { changer = new BufferedReader((new
	 * InputStreamReader(conn.getInputStream()))); } else { changer = new
	 * BufferedReader((new InputStreamReader(conn.getErrorStream()))); }
	 * 
	 * return changer.readLine(); }
	 */
	
	@RequestMapping(value="accountTransfer")
	public String accountTransfer() throws Exception {
	    
	    return "infra/account/user/accountTransfer";
	}
	
//	cardView
	@RequestMapping(value="cardView")
	public String cardView() throws Exception {
	    return "infra/card/user/cardView";
	}
	
//	cardForm
	@RequestMapping(value="cardForm")
	public String cardForm() throws Exception {
	    
	    return "infra/card/user/cardForm";
	}
	
//	checkAccount
	@RequestMapping(value="checkAccount")
	public String checkAccount() throws Exception {
		 return "infra/member/user/test";
	}
	
//	cardInst
	@RequestMapping(value="cardInst")
	public String cardInst(Account dto) throws Exception {
		service.cardInst(dto);
		return "redirect:/account/cardForm";
	}
	
//	excelDownload
	@RequestMapping("excelDownload")
    public void excelDownload(AccountVo vo, HttpServletResponse httpServletResponse) throws Exception {
        
        setSearchAndPaging(vo);
        vo.setParamsPaging(service.selectOneCount(vo));

        if (vo.getTotalRows() > 0) {
            List<Account> list = service.selectList2();
            
//          Workbook workbook = new HSSFWorkbook(); // for xls
            Workbook workbook = new XSSFWorkbook();
            Sheet sheet = workbook.createSheet("Sheet1");
            CellStyle cellStyle = workbook.createCellStyle();        
            Row row = null;
            Cell cell = null;
            int rowNum = 0;
            
//          each column width setting           
            sheet.setColumnWidth(0, 2100);
            sheet.setColumnWidth(1, 3100);

//          Header
            String[] tableHeader = {"Seq", "이름", "아이디", "성별", "생일", "이메일", "모바일", "등록일", "수정일"};

            row = sheet.createRow(rowNum++);
            
            for(int i=0; i<tableHeader.length; i++) {
                cell = row.createCell(i);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
                cell.setCellValue(tableHeader[i]);
            }

//          Body
            for (int i=0; i<list.size(); i++) {
                row = sheet.createRow(rowNum++);
                
//              String type: null 전달 되어도 ok
//              int, date type: null 시 오류 발생 하므로 null check
//              String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅               
                
                cell = row.createCell(0);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
                cell.setCellValue(Integer.parseInt(list.get(i).getCardSeq()));
                
//                cell = row.createCell(1);
//                cellStyle.setAlignment(HorizontalAlignment.CENTER);
//                cell.setCellStyle(cellStyle);
//                cell.setCellValue(list.get(i).getIfmmName());
//                
//                cell = row.createCell(2);
//                cellStyle.setAlignment(HorizontalAlignment.CENTER);
//                cell.setCellStyle(cellStyle);
//                cell.setCellValue(list.get(i).getIfmmId());
//                
//                cell = row.createCell(3);
//                cellStyle.setAlignment(HorizontalAlignment.CENTER);
//                cell.setCellStyle(cellStyle);
//                if(list.get(i).getIfmmGenderCd() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getIfmmGenderCd()));
//                
//                cell = row.createCell(4);
//                cellStyle.setAlignment(HorizontalAlignment.CENTER);
//                cell.setCellStyle(cellStyle);
//                cell.setCellValue(list.get(i).getIfmmDob());
//                
//                cell = row.createCell(5);
//                cellStyle.setAlignment(HorizontalAlignment.CENTER);
//                cell.setCellStyle(cellStyle);
//                cell.setCellValue(list.get(i).getIfmeEmailFull());
//                
//                cell = row.createCell(6);
//                cellStyle.setAlignment(HorizontalAlignment.CENTER);
//                cell.setCellStyle(cellStyle);
//                cell.setCellValue(list.get(i).getIfmpNumber());    
//                
//                cell = row.createCell(7);
//                cellStyle.setAlignment(HorizontalAlignment.CENTER);
//                cell.setCellStyle(cellStyle);
//                if(list.get(i).getRegDateTime() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getRegDateTime()));
//                
//                cell = row.createCell(8);
//                cellStyle.setAlignment(HorizontalAlignment.CENTER);
//                cell.setCellStyle(cellStyle);
//                if(list.get(i).getModDateTime() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getModDateTime()));
            }

            httpServletResponse.setContentType("ms-vnd/excel");
//          httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");    // for xls
            httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

            workbook.write(httpServletResponse.getOutputStream());
            workbook.close();
        }
    }
	
}
