<?php session_start

public class PayUVO {
	private String language;
	private String command;
	private Merchant merchant;
	private Transaction transaction; 
	private boolean test;
	
	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getCommand() {
		return command;
	}

	public void setCommand(String command) {
		this.command = command;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	public Transaction getTransaction() {
		return transaction;
	}

	public void setTransaction(Transaction transaction) {
		this.transaction = transaction;
	}

	public boolean isTest() {
		return test;
	}

	public void setTest(boolean test) {
		this.test = test;
	}

	public class Merchant{
		private String apiKey;
		private String apiLogin;
		public String getApiKey() {
			return apiKey;
		}
		public void setApiKey(String apiKey) {
			this.apiKey = apiKey;
		}
		public String getApiLogin() {
			return apiLogin;
		}
		public void setApiLogin(String apiLogin) {
			this.apiLogin = apiLogin;
		}
	}
	
	public class Transaction{
		private Order order;
		private Payer payer;
		private CreditCard creditCard;
		private ExtraParameters extraParameters;
		private String type;
		private String paymentMethod;
		private String paymentCountry;
		private String deviceSessionId;
		private String ipAddress;
		private String cookie;
		private String userAgent; 
		private MonthsWithoutInterest monthsWithoutInterest;
		public MonthsWithoutInterest getMonthsWithoutInterest() {
			return monthsWithoutInterest;
		}

		public void setMonthsWithoutInterest(MonthsWithoutInterest monthsWithoutInterest) {
			this.monthsWithoutInterest = monthsWithoutInterest;
		}

		public Order getOrder() {
			return order;
		}

		public void setOrder(Order order) {
			this.order = order;
		}

		public Payer getPayer() {
			return payer;
		}

		public void setPayer(Payer payer) {
			this.payer = payer;
		}

		public CreditCard getCreditCard() {
			return creditCard;
		}

		public void setCreditCard(CreditCard creditCard) {
			this.creditCard = creditCard;
		}

		public ExtraParameters getExtraParameters() {
			return extraParameters;
		}

		public void setExtraParameters(ExtraParameters extraParameters) {
			this.extraParameters = extraParameters;
		}

		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}

		public String getPaymentMethod() {
			return paymentMethod;
		}

		public void setPaymentMethod(String paymentMethod) {
			this.paymentMethod = paymentMethod;
		}

		public String getPaymentCountry() {
			return paymentCountry;
		}

		public void setPaymentCountry(String paymentCountry) {
			this.paymentCountry = paymentCountry;
		}

		public String getDeviceSessionId() {
			return deviceSessionId;
		}

		public void setDeviceSessionId(String deviceSessionId) {
			this.deviceSessionId = deviceSessionId;
		}

		public String getIpAddress() {
			return ipAddress;
		}

		public void setIpAddress(String ipAddress) {
			this.ipAddress = ipAddress;
		}

		public String getCookie() {
			return cookie;
		}

		public void setCookie(String cookie) {
			this.cookie = cookie;
		}

		public String getUserAgent() {
			return userAgent;
		}

		public void setUserAgent(String userAgent) {
			this.userAgent = userAgent;
		}

		public class Order{
			private String accountId;
			private String referenceCode;
			private String description;
			private String language;
			private String signature;
			private String notifyUrl;
			private AdditionalValues additionalValues;
			private Buyer buyer;
			private Address shippingAddress;
			
			public String getAccountId() {
				return accountId;
			}
			public void setAccountId(String accountId) {
				this.accountId = accountId;
			}
			public String getReferenceCode() {
				return referenceCode;
			}
			public void setReferenceCode(String referenceCode) {
				this.referenceCode = referenceCode;
			}
			public String getDescription() {
				return description;
			}
			public void setDescription(String description) {
				this.description = description;
			}
			public String getLanguage() {
				return language;
			}
			public void setLanguage(String language) {
				this.language = language;
			}
			public String getSignature() {
				return signature;
			}
			public void setSignature(String signature) {
				this.signature = signature;
			}
			public String getNotifyUrl() {
				return notifyUrl;
			}
			public void setNotifyUrl(String notifyUrl) {
				this.notifyUrl = notifyUrl;
			}
			public AdditionalValues getAdditionalValues() {
				return additionalValues;
			}
			public void setAdditionalValues(AdditionalValues additionalValues) {
				this.additionalValues = additionalValues;
			}
			public Buyer getBuyer() {
				return buyer;
			}
			public void setBuyer(Buyer buyer) {
				this.buyer = buyer;
			}
			public Address getShippingAddress() {
				return shippingAddress;
			}
			public void setShippingAddress(Address shippingAddress) {
				this.shippingAddress = shippingAddress;
			}
			public class AdditionalValues{
				private  Tx_value TX_VALUE;
				public Tx_value getTX_VALUE() {
					return TX_VALUE;
				}
				public void setTX_VALUE(Tx_value tX_VALUE) {
					TX_VALUE = tX_VALUE;
				}
				public class Tx_value{
					private int value;
					private String currency;
					public int getValue() {
						return value;
					}
					public void setValue(int value) {
						this.value = value;
					}
					public String getCurrency() {
						return currency;
					}
					public void setCurrency(String currency) {
						this.currency = currency;
					}
				}
			}
			public class Buyer{
				private String merchantBuyerId;
				private String fullName;
				private String emailAddress;
				private String contactPhone;
				private String dniNumber;
				private Address shippingAddress;
				public String getMerchantBuyerId() {
					return merchantBuyerId;
				}
				public void setMerchantBuyerId(String merchantBuyerId) {
					this.merchantBuyerId = merchantBuyerId;
				}
				public String getFullName() {
					return fullName;
				}
				public void setFullName(String fullName) {
					this.fullName = fullName;
				}
				public String getEmailAddress() {
					return emailAddress;
				}
				public void setEmailAddress(String emailAddress) {
					this.emailAddress = emailAddress;
				}
				public String getContactPhone() {
					return contactPhone;
				}
				public void setContactPhone(String contactPhone) {
					this.contactPhone = contactPhone;
				}
				public String getDniNumber() {
					return dniNumber;
				}
				public void setDniNumber(String dniNumber) {
					this.dniNumber = dniNumber;
				}
				public Address getShippingAddress() {
					return shippingAddress;
				}
				public void setShippingAddress(Address shippingAddress) {
					this.shippingAddress = shippingAddress;
				}
			}
		}
		
		public class Payer{
			private String merchantPayerId;
			private String fullName;
			private String emailAddress;
			private String contactPhone;
			private String dniNumber;
			private Address billingAddress;
			public String getMerchantPayerId() {
				return merchantPayerId;
			}
			public void setMerchantPayerId(String merchantPayerId) {
				this.merchantPayerId = merchantPayerId;
			}
			public String getFullName() {
				return fullName;
			}
			public void setFullName(String fullName) {
				this.fullName = fullName;
			}
			public String getEmailAddress() {
				return emailAddress;
			}
			public void setEmailAddress(String emailAddress) {
				this.emailAddress = emailAddress;
			}
			public String getContactPhone() {
				return contactPhone;
			}
			public void setContactPhone(String contactPhone) {
				this.contactPhone = contactPhone;
			}
			public String getDniNumber() {
				return dniNumber;
			}
			public void setDniNumber(String dniNumber) {
				this.dniNumber = dniNumber;
			}
			public Address getBillingAddress() {
				return billingAddress;
			}
			public void setBillingAddress(Address billingAddress) {
				this.billingAddress = billingAddress;
			}
		}

		public class CreditCard{
			private String number;
			private String securityCode;
			private String expirationDate;
			private String name;
			public String getNumber() {
				return number;
			}
			public void setNumber(String number) {
				this.number = number;
			}
			public String getSecurityCode() {
				return securityCode;
			}
			public void setSecurityCode(String securityCode) {
				this.securityCode = securityCode;
			}
			public String getExpirationDate() {
				return expirationDate;
			}
			public void setExpirationDate(String expirationDate) {
				this.expirationDate = expirationDate;
			}
			public String getName() {
				return name;
			}
			public void setName(String name) {
				this.name = name;
			}
		}
		
		public class ExtraParameters{
			private int INSTALLMENTS_NUMBER;

			public int getINSTALLMENTS_NUMBER() {
				return INSTALLMENTS_NUMBER;
			}

			public void setINSTALLMENTS_NUMBER(int iNSTALLMENTS_NUMBER) {
				INSTALLMENTS_NUMBER = iNSTALLMENTS_NUMBER;
			}
		}
		
		public class MonthsWithoutInterest{
			private int months;
			private String bank;
			public int getMonths() {
				return months;
			}
			public void setMonths(int months) {
				this.months = months;
			}
			public String getBank() {
				return bank;
			}
			public void setBank(String bank) {
				this.bank = bank;
			}
		}
		
		public class Address{
			private String street1;
			private String street2;
			private String city;
			private String state;
			private String country;
			private String postalCode;
			private String phone;
			public String getStreet1() {
				return street1;
			}
			public void setStreet1(String street1) {
				this.street1 = street1;
			}
			public String getCity() {
				return city;
			}
			public void setCity(String city) {
				this.city = city;
			}
			public String getState() {
				return state;
			}
			public void setState(String state) {
				this.state = state;
			}
			public String getCountry() {
				return country;
			}
			public void setCountry(String country) {
				this.country = country;
			}
			public String getPostalCode() {
				return postalCode;
			}
			public void setPostalCode(String postalCode) {
				this.postalCode = postalCode;
			}
			public String getPhone() {
				return phone;
			}
			public void setPhone(String phone) {
				this.phone = phone;
			}
			public String getStreet2() {
				return street2;
			}
			public void setStreet2(String street2) {
				this.street2 = street2;
			}
		}

		
	}
	
}





?>