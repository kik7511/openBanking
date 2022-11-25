package com.openBanking.modules.account;

import java.util.Date;

public class Account {

	private String seq;
	private Integer ifmmSeq;
	private String availablamt;
	private Integer bankName;
	private String balanceAmt;
	private String availableAmt;
	private Integer accountType;
	private String productName;
	private Date accountIssueDate;
	private Date maturityDate;
	private Date lastTranDate;
	private String accountNumber;
	private String usePrice;
	private String cardSeq;
	private String cardId;
	private String cardNumMasked;
	private String cardName;
	private Integer cardType;
	private String settlementBankCode;
	private Date issueDate;
	private String cardPw;
	private Integer cvc;
	private String ifmmDob;
	private Integer ifmmGender;
	private Integer useMoney;
	private String[] res_list;
	private Integer balance_amt;
	private String bank_code_tran;
	private String bank_name;
	private String bank_tran_date;
	private String bank_tran_id;
	private String fintech_use_num;
	private Integer page_record_cnt;
	private String[] after_balance_amt;
	private String branch_name;
	private String inout_type;
	private String print_content;
	private String product_name;
	
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	private String account_num_masked;
	
	
	public String getAccount_num_masked() {
		return account_num_masked;
	}
	public void setAccount_num_masked(String account_num_masked) {
		this.account_num_masked = account_num_masked;
	}
	public String[] getAfter_balance_amt() {
		return after_balance_amt;
	}
	public void setAfter_balance_amt(String[] after_balance_amt) {
		this.after_balance_amt = after_balance_amt;
	}
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	public String getInout_type() {
		return inout_type;
	}
	public void setInout_type(String inout_type) {
		this.inout_type = inout_type;
	}
	public String getPrint_content() {
		return print_content;
	}
	public void setPrint_content(String print_content) {
		this.print_content = print_content;
	}
	public Integer getTran_amt() {
		return tran_amt;
	}
	public void setTran_amt(Integer tran_amt) {
		this.tran_amt = tran_amt;
	}
	public String getTran_date() {
		return tran_date;
	}
	public void setTran_date(String tran_date) {
		this.tran_date = tran_date;
	}
	public String getTran_time() {
		return tran_time;
	}
	public void setTran_time(String tran_time) {
		this.tran_time = tran_time;
	}
	public String getTran_type() {
		return tran_type;
	}
	public void setTran_type(String tran_type) {
		this.tran_type = tran_type;
	}
	private Integer tran_amt;
	private String tran_date;
	private String tran_time;
	private String tran_type;
	
	
//	---------------------------
	
	
	public String[] getRes_list() {
		return res_list;
	}
	public void setRes_list(String[] res_list) {
		this.res_list = res_list;
	}
	public Integer getBalance_amt() {
		return balance_amt;
	}
	public void setBalance_amt(Integer balance_amt) {
		this.balance_amt = balance_amt;
	}
	public String getBank_code_tran() {
		return bank_code_tran;
	}
	public void setBank_code_tran(String bank_code_tran) {
		this.bank_code_tran = bank_code_tran;
	}
	public String getBank_name() {
		return bank_name;
	}
	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}
	public String getBank_tran_date() {
		return bank_tran_date;
	}
	public void setBank_tran_date(String bank_tran_date) {
		this.bank_tran_date = bank_tran_date;
	}
	public String getBank_tran_id() {
		return bank_tran_id;
	}
	public void setBank_tran_id(String bank_tran_id) {
		this.bank_tran_id = bank_tran_id;
	}
	public String getFintech_use_num() {
		return fintech_use_num;
	}
	public void setFintech_use_num(String fintech_use_num) {
		this.fintech_use_num = fintech_use_num;
	}
	public Integer getPage_record_cnt() {
		return page_record_cnt;
	}
	public void setPage_record_cnt(Integer page_record_cnt) {
		this.page_record_cnt = page_record_cnt;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(Integer ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getAvailablamt() {
		return availablamt;
	}
	public void setAvailablamt(String availablamt) {
		this.availablamt = availablamt;
	}
	public Integer getBankName() {
		return bankName;
	}
	public void setBankName(Integer bankName) {
		this.bankName = bankName;
	}
	public String getBalanceAmt() {
		return balanceAmt;
	}
	public void setBalanceAmt(String balanceAmt) {
		this.balanceAmt = balanceAmt;
	}
	public String getAvailableAmt() {
		return availableAmt;
	}
	public void setAvailableAmt(String availableAmt) {
		this.availableAmt = availableAmt;
	}
	public Integer getAccountType() {
		return accountType;
	}
	public void setAccountType(Integer accountType) {
		this.accountType = accountType;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Date getAccountIssueDate() {
		return accountIssueDate;
	}
	public void setAccountIssueDate(Date accountIssueDate) {
		this.accountIssueDate = accountIssueDate;
	}
	public Date getMaturityDate() {
		return maturityDate;
	}
	public void setMaturityDate(Date maturityDate) {
		this.maturityDate = maturityDate;
	}
	public Date getLastTranDate() {
		return lastTranDate;
	}
	public void setLastTranDate(Date lastTranDate) {
		this.lastTranDate = lastTranDate;
	}
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getUsePrice() {
		return usePrice;
	}
	public void setUsePrice(String usePrice) {
		this.usePrice = usePrice;
	}
    public String getCardSeq() {
        return cardSeq;
    }
    public void setCardSeq(String cardSeq) {
        this.cardSeq = cardSeq;
    }
    public String getCardId() {
        return cardId;
    }
    public void setCardId(String cardId) {
        this.cardId = cardId;
    }
    public String getCardNumMasked() {
        return cardNumMasked;
    }
    public void setCardNumMasked(String cardNumMasked) {
        this.cardNumMasked = cardNumMasked;
    }
    public String getCardName() {
        return cardName;
    }
    public void setCardName(String cardName) {
        this.cardName = cardName;
    }
    public Integer getCardType() {
        return cardType;
    }
    public void setCardType(Integer cardType) {
        this.cardType = cardType;
    }
    public String getSettlementBankCode() {
        return settlementBankCode;
    }
    public void setSettlementBankCode(String settlementBankCode) {
        this.settlementBankCode = settlementBankCode;
    }
    public Date getIssueDate() {
        return issueDate;
    }
    public void setIssueDate(Date issueDate) {
        this.issueDate = issueDate;
    }
	public String getCardPw() {
		return cardPw;
	}
	public void setCardPw(String cardPw) {
		this.cardPw = cardPw;
	}
    public Integer getCvc() {
        return cvc;
    }
    public void setCvc(Integer cvc) {
        this.cvc = cvc;
    }
    
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
		this.ifmmDob = ifmmDob;
	}
	public Integer getIfmmGender() {
		return ifmmGender;
	}
	public void setIfmmGender(Integer ifmmGender) {
		this.ifmmGender = ifmmGender;
	}
	public Integer getUseMoney() {
		return useMoney;
	}
	public void setUseMoney(Integer useMoney) {
		this.useMoney = useMoney;
	}
	
}
