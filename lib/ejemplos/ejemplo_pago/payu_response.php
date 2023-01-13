public class PayUResponseVO {
	private String code;
	private String error;
	private TransactionResponse transactionResponse;
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public TransactionResponse getTransactionResponse() {
		return transactionResponse;
	}

	public void setTransactionResponse(TransactionResponse transactionResponse) {
		this.transactionResponse = transactionResponse;
	}	
	
	public class TransactionResponse{
		private int orderId;
		private String transactionId;
		private String state;
		private String paymentNetworkResponseCode;
		private String paymentNetworkResponseErrorMessage;
		private String trazabilityCode;
		private String authorizationCode;
		private String pendingReason;
		private String responseCode;
		private String errorCode;
		private String responseMessage;
		private Object transactionDate;
		private Object transactionTime;
		private long operationDate;
		private Object extraParameters;
		private String referenceCode;
		
		public String getReferenceCode() {
			return referenceCode;
		}
		public void setReferenceCode(String referenceCode) {
			this.referenceCode = referenceCode;
		}
		public int getOrderId() {
			return orderId;
		}
		public void setOrderId(int orderId) {
			this.orderId = orderId;
		}
		public String getTransactionId() {
			return transactionId;
		}
		public void setTransactionId(String transactionId) {
			this.transactionId = transactionId;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		public String getPaymentNetworkResponseCode() {
			return paymentNetworkResponseCode;
		}
		public void setPaymentNetworkResponseCode(String paymentNetworkResponseCode) {
			this.paymentNetworkResponseCode = paymentNetworkResponseCode;
		}
		public String getPaymentNetworkResponseErrorMessage() {
			return paymentNetworkResponseErrorMessage;
		}
		public void setPaymentNetworkResponseErrorMessage(String paymentNetworkResponseErrorMessage) {
			this.paymentNetworkResponseErrorMessage = paymentNetworkResponseErrorMessage;
		}
		public String getTrazabilityCode() {
			return trazabilityCode;
		}
		public void setTrazabilityCode(String trazabilityCode) {
			this.trazabilityCode = trazabilityCode;
		}
		public String getAuthorizationCode() {
			return authorizationCode;
		}
		public void setAuthorizationCode(String authorizationCode) {
			this.authorizationCode = authorizationCode;
		}
		public String getPendingReason() {
			return pendingReason;
		}
		public void setPendingReason(String pendingReason) {
			this.pendingReason = pendingReason;
		}
		public String getResponseCode() {
			return responseCode;
		}
		public void setResponseCode(String responseCode) {
			this.responseCode = responseCode;
		}
		public String getErrorCode() {
			return errorCode;
		}
		public void setErrorCode(String errorCode) {
			this.errorCode = errorCode;
		}
		public String getResponseMessage() {
			return responseMessage;
		}
		public void setResponseMessage(String responseMessage) {
			this.responseMessage = responseMessage;
		}
		public Object getTransactionDate() {
			return transactionDate;
		}
		public void setTransactionDate(Object transactionDate) {
			this.transactionDate = transactionDate;
		}
		public Object getTransactionTime() {
			return transactionTime;
		}
		public void setTransactionTime(String transactionTime) {
			this.transactionTime = transactionTime;
		}
		public long getOperationDate() {
			return operationDate;
		}
		public void setOperationDate(long operationDate) {
			this.operationDate = operationDate;
		}
		public Object getExtraParameters() {
			return extraParameters;
		}
		public void setExtraParameters(Object extraParameters) {
			this.extraParameters = extraParameters;
		}
	}
}