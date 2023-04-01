# Define the folder structure
$folders = @{
    '1. Finance'                    = @{
        'a. Bank statements'              = @('Citi', 'ICICI', 'SBI', 'IDBI', 'HSBC', 'HDFC', 'CANARA')
        'b. Tax documents'                = @('Income Tax', 'Property Tax')
        'c. Investment records'           = @('Stocks', 'Bonds', 'Mutual Funds', 'Real Estate' , 'Fixed Desposits')
        'd. Credit Cards'                 = @('Statements', 'Disputes and Chargebacks', 'Card Cancellation and Closure')
        'e. Loan agreements'              = @('Mortgage', 'Auto Loan', 'Personal Loan', 'Student Loan')
        'f. Budgets and expense tracking' = @('Monthly Budget', 'Yearly Budget', 'Expense Receipts')
        'g. Insurance policies'           = @('Life Insurance', 'Health Insurance', 'Home Insurance', 'Auto Insurance')
        'h. Pension and retirement plans' = @('EPF', 'PPF', 'NPS', 'Insurance-linked Pension Plans', 'Mutual Fund-linked Retirement Plans')
        'i. Receipts and invoices'        = @('Groceries', 'Utilities (Electricity, Water, Gas)' , 'Internet and Phone', 'Entertainment (Movies, Events, Streaming Services)', 'Dining Out and Takeaway', 'Travel and Transportation', 'Health and Fitness', 'Education and Courses', 'Home Maintenance and Repairs', ' Miscellaneous')
    }

    '2. Rental'                     = @{
        'a. Lease agreements'                 = @( )
        'b. Rent receipts'                    = @( )
        'c. Tenant insurance'                 = @( )
        'd. Maintenance requests and records' = @( )
        'e. Security deposit documentation'   = @( )
        'f. Inventory checklists'             = @( )
        'g. Rental applications'              = @( )
    }

    '3. Legal'                      = @{
        'a. Wills and estate planning'              = @( )
        'b. Power of attorney'                      = @( )
        'c. Trust documents'                        = @( )
        'd. Contracts and agreements'               = @( )
        'e. Intellectual property records'          = @( )
        'f. Court records and legal correspondence' = @( )
        'g. Dispute resolution records'             = @( )
    }

    '4. Personal Identification'    = @{
        'a. Birth certificate'    = @( )
        'b. Passport'             = @( )
        'c. Social security card' = @( )
        'd. Driver''s license'    = @( )
        'e. Marriage certificate' = @( )
        'f. Divorce decree'       = @( )
        'g. Adoption records'     = @( )
    }

    '5. Employment'                 = @{
        'a. Employment contracts'         = @('Full-time Employment', 'Part-time Employment', 'Contract and Freelance Work', 'Amendments and Addendums')
        'b. Payslips and payment records' = @('Year 20XX' )
        'c. Performance reviews'          = @('Year 20XX')
        'd. Benefits and Allowances'      = @('Health Benefits', 'Retirement Contributions', 'Housing Allowance', 'Travel Allowance', 'Other Benefits and Allowances')
        'e. Tax'                          = @('forms', 'Tax Deductions and Withholdings')
        'f. Job applications'             = @('Company A', 'Company B')
        'g. Reference letters'            = @('Reference Letters', 'Reference Contact List')
        'i. Resumes'                      = @('Chronological Resumes', 'Functional Resumes' , 'Combination Resumes', 'Targeted Resumes', 'Resume Templates')
        'i. Cover Letters'                = @('General Cover Letters', 'Job-Specific Cover Letters' , 'Networking Cover Letters', 'Referral Cover Letters')
        'i. Portfolios and Work Samples'  = @('Writing Samples', 'Design Work', 'Presentations', 'Code Samples', 'Other Relevant Work Samples')
        'j. Interview Preparation'        = @('Company Research', 'Interview Questions and Answers', 'Thank You Letters')
        'k. Job Offers and Negotiations'  = @('Offer Letters', 'Counteroffers and Negotiation Documents')
        
    }

    '6. Education'                  = @{
        'a. Diplomas and certificates'          = @( )
        'b. Transcripts'                        = @( )
        'c. Enrollment records'                 = @( )
        'd. Student loan documents'             = @( )
        'e. Scholarship and grant information'  = @( )
        'f. Course syllabi and study materials' = @( )
    }

    '7. Health and Medical'         = @{
        'a. Health insurance policies'           = @( )
        'b. Medical records and history'         = @( )
        'c. Immunization records'                = @( )
        'd. Prescription records'                = @( )
        'e. Living wills and advance directives' = @( )
        'f. Disability documentation'            = @( )
    }

    '8. Vehicle and Transportation' = @{
        'a. Vehicle titles and registration'       = @( )
        'b. Auto insurance policies'               = @( )
        'c. Maintenance records'                   = @( )
        'd. Warranty information'                  = @( )
        'e. Traffic and parking violation records' = @( )
    }

    '9. Real Estate'                = @{
        'a. Property deeds'                           = @( )
        'b. Mortgage documents'                       = @( )
        'c. Homeowners'' insurance policies'          = @( )
        'd. Property tax records'                     = @( )
        'e. Home improvement and maintenance records' = @( )
        'f. Utility bills and statements'             = @( )
    }

    '10. Travel'                    = @{
        'a. Itineraries and reservations'                   = @( )
        'b. Frequent flyer and rewards program information' = @( )
        'c. Travel insurance policies'                      = @( )
        'd. Passports and visas'                            = @( )
        'e. Vaccination and health records for travel'      = @( )
    }
}



# Set the root folder where the structure will be created
$rootFolder = "C:\PersonalDocuments"

# Create the folder structure
foreach ($category in $folders.Keys) {
    $categoryPath = Join-Path $rootFolder $category
    New-Item -ItemType Directory -Force -Path $categoryPath | Out-Null

    foreach ($subcategory in $folders[$category].Keys) {
        $subcategoryPath = Join-Path $categoryPath $subcategory
        New-Item -ItemType Directory -Force -Path $subcategoryPath | Out-Null

        foreach ($subSubCategory in $folders[$category][$subcategory]) {
            $subSubCategoryPath = Join-Path $subcategoryPath $subSubCategory
            New-Item -ItemType Directory -Force -Path $subSubCategoryPath | Out-Null
        }
    }
}

