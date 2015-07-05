.class public Lcom/parse/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/codec/StringEncoder;


# static fields
.field private static final FRONTV:Ljava/lang/String; = "EIY"

.field private static final VARSON:Ljava/lang/String; = "CSPTG"

.field private static final VOWELS:Ljava/lang/String; = "AEIOU"


# instance fields
.field private maxCodeLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/codec/language/Metaphone;->maxCodeLen:I

    .line 71
    return-void
.end method

.method private isLastChar(II)Z
    .locals 1

    .prologue
    .line 351
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextChar(Ljava/lang/StringBuffer;IC)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 332
    .line 333
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_0

    .line 335
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    .line 337
    :cond_0
    return v0
.end method

.method private isPreviousChar(Ljava/lang/StringBuffer;IC)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 323
    .line 324
    if-lez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 326
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    .line 328
    :cond_0
    return v0
.end method

.method private isVowel(Ljava/lang/StringBuffer;I)Z
    .locals 2

    .prologue
    .line 319
    const-string v0, "AEIOU"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    if-ltz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 344
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 347
    :cond_0
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 368
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/parse/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lcom/parse/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parse/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/parse/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/parse/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/parse/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/parse/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/16 v11, 0x4b

    const/16 v10, 0x53

    const/16 v9, 0x48

    const/4 v3, 0x1

    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    const-string v0, ""

    .line 315
    :goto_0
    return-object v0

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 90
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 95
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v2, 0x28

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 96
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 98
    aget-char v2, v0, v1

    sparse-switch v2, :sswitch_data_0

    .line 132
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 135
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move v0, v1

    .line 138
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/parse/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v7

    if-ge v2, v7, :cond_1f

    if-ge v0, v6, :cond_1f

    .line 140
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 142
    const/16 v7, 0x43

    if-eq v2, v7, :cond_8

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 311
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/parse/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v7

    if-le v2, v7, :cond_3

    .line 312
    invoke-virtual {p0}, Lcom/parse/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    .line 102
    :sswitch_0
    aget-char v2, v0, v3

    const/16 v6, 0x4e

    if-ne v2, v6, :cond_4

    .line 103
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 109
    :sswitch_1
    aget-char v2, v0, v3

    const/16 v6, 0x45

    if-ne v2, v6, :cond_5

    .line 110
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 112
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 116
    :sswitch_2
    aget-char v2, v0, v3

    const/16 v6, 0x52

    if-ne v2, v6, :cond_6

    .line 117
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 120
    :cond_6
    aget-char v2, v0, v3

    if-ne v2, v9, :cond_7

    .line 121
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 122
    const/16 v0, 0x57

    invoke-virtual {v4, v1, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1

    .line 124
    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 128
    :sswitch_3
    aput-char v10, v0, v1

    .line 129
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 145
    :cond_8
    packed-switch v2, :pswitch_data_0

    .line 309
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 147
    :pswitch_0
    if-nez v0, :cond_9

    .line 148
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 152
    :pswitch_1
    const/16 v7, 0x4d

    invoke-direct {p0, v4, v0, v7}, Lcom/parse/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct {p0, v6, v0}, Lcom/parse/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_9

    .line 156
    :cond_a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 160
    :pswitch_2
    invoke-direct {p0, v4, v0, v10}, Lcom/parse/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0, v6, v0}, Lcom/parse/codec/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "EIY"

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_9

    .line 165
    :cond_b
    const-string v2, "CIA"

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 166
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 169
    :cond_c
    invoke-direct {p0, v6, v0}, Lcom/parse/codec/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "EIY"

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_d

    .line 171
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 174
    :cond_d
    invoke-direct {p0, v4, v0, v10}, Lcom/parse/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0, v4, v0, v9}, Lcom/parse/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 176
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 179
    :cond_e
    invoke-direct {p0, v4, v0, v9}, Lcom/parse/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 180
    if-nez v0, :cond_f

    const/4 v2, 0x3

    if-lt v6, v2, :cond_f

    const/4 v2, 0x2

    invoke-direct {p0, v4, v2}, Lcom/parse/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 183
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 185
    :cond_f
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 188
    :cond_10
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 192
    :pswitch_3
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v6, v2}, Lcom/parse/codec/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0x47

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "EIY"

    add-int/lit8 v7, v0, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_11

    .line 195
    const/16 v2, 0x4a

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_4

    .line 197
    :cond_11
    const/16 v2, 0x54

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 201
    :pswitch_4
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v6, v2}, Lcom/parse/codec/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-direct {p0, v4, v0, v9}, Lcom/parse/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-nez v2, :cond_9

    .line 205
    :cond_12
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v6, v2}, Lcom/parse/codec/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-direct {p0, v4, v0, v9}, Lcom/parse/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v2, v0, 0x2

    invoke-direct {p0, v4, v2}, Lcom/parse/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 210
    :cond_13
    if-lez v0, :cond_14

    const-string v2, "GN"

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "GNED"

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 215
    :cond_14
    const/16 v2, 0x47

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v3

    .line 221
    :goto_5
    invoke-direct {p0, v6, v0}, Lcom/parse/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "EIY"

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_16

    if-nez v2, :cond_16

    .line 224
    const/16 v2, 0x4a

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :cond_15
    move v2, v1

    .line 219
    goto :goto_5

    .line 226
    :cond_16
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 230
    :pswitch_5
    invoke-direct {p0, v6, v0}, Lcom/parse/codec/language/Metaphone;->isLastChar(II)Z

    move-result v2

    if-nez v2, :cond_9

    .line 233
    if-lez v0, :cond_17

    const-string v2, "CSPTG"

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_9

    .line 237
    :cond_17
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v4, v2}, Lcom/parse/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 238
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 247
    :pswitch_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 250
    :pswitch_7
    if-lez v0, :cond_18

    .line 251
    const/16 v7, 0x43

    invoke-direct {p0, v4, v0, v7}, Lcom/parse/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-nez v7, :cond_9

    .line 252
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 255
    :cond_18
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 259
    :pswitch_8
    invoke-direct {p0, v4, v0, v9}, Lcom/parse/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 261
    const/16 v2, 0x46

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 263
    :cond_19
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 267
    :pswitch_9
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 270
    :pswitch_a
    const-string v2, "SH"

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "SIO"

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "SIA"

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 273
    :cond_1a
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 275
    :cond_1b
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 279
    :pswitch_b
    const-string v2, "TIA"

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "TIO"

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 281
    :cond_1c
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 284
    :cond_1d
    const-string v2, "TCH"

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 289
    const-string v2, "TH"

    invoke-direct {p0, v4, v0, v2}, Lcom/parse/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 290
    const/16 v2, 0x30

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 292
    :cond_1e
    const/16 v2, 0x54

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 296
    :pswitch_c
    const/16 v2, 0x46

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 298
    :pswitch_d
    invoke-direct {p0, v6, v0}, Lcom/parse/codec/language/Metaphone;->isLastChar(II)Z

    move-result v7

    if-nez v7, :cond_9

    add-int/lit8 v7, v0, 0x1

    invoke-direct {p0, v4, v7}, Lcom/parse/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 300
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 304
    :pswitch_e
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 307
    :pswitch_f
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 315
    :cond_1f
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x47 -> :sswitch_0
        0x4b -> :sswitch_0
        0x50 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
    .end sparse-switch

    .line 145
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .locals 0

    .prologue
    .line 406
    iput p1, p0, Lcom/parse/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
