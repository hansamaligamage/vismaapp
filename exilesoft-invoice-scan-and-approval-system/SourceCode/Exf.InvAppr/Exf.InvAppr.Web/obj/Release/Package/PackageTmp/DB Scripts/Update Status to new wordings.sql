USE [invoiceDb]
GO

UPDATE [dbo].[Vouchers]
SET [Status] = REPLACE([Status], 'ToBeVerified', 'To Be Verified')
WHERE [Status] LIKE ('ToBeVerified')

UPDATE [dbo].[Vouchers]
SET [Status] = REPLACE([Status], 'VerifierRejected', 'Verifier Rejected')
WHERE [Status] LIKE ('VerifierRejected')

UPDATE [dbo].[Vouchers]
SET [Status] = REPLACE([Status], 'VerifierMoreInfoRequested', 'Verifier More Info Requested')
WHERE [Status] LIKE ('VerifierMoreInfoRequested')

UPDATE [dbo].[Vouchers]
SET [Status] = REPLACE([Status], 'ApproverRejected', 'Approver Rejected')
WHERE [Status] LIKE ('ApproverRejected')

UPDATE [dbo].[Vouchers]
SET [Status] = REPLACE([Status], 'ApproverMoreInfoRequested', 'Approver More Info Requested ')
WHERE [Status] LIKE ('ApproverMoreInfoRequested')