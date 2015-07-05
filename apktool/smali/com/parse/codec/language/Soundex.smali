.class public Lcom/parse/codec/language/Soundex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/codec/StringEncoder;


# static fields
.field public static final US_ENGLISH:Lcom/parse/codec/language/Soundex;

.field private static final US_ENGLISH_MAPPING:[C

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01230120022455012623010202"


# instance fields
.field private maxLength:I

.field private final soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "01230120022455012623010202"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/parse/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    .line 58
    new-instance v0, Lcom/parse/codec/language/Soundex;

    invoke-direct {v0}, Lcom/parse/codec/language/Soundex;-><init>()V

    sput-object v0, Lcom/parse/codec/language/Soundex;->US_ENGLISH:Lcom/parse/codec/language/Soundex;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/codec/language/Soundex;->maxLength:I

    .line 104
    sget-object v0, Lcom/parse/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    iput-object v0, p0, Lcom/parse/codec/language/Soundex;->soundexMapping:[C

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/codec/language/Soundex;->maxLength:I

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/parse/codec/language/Soundex;->soundexMapping:[C

    .line 132
    return-void
.end method

.method public constructor <init>([C)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/codec/language/Soundex;->maxLength:I

    .line 118
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/parse/codec/language/Soundex;->soundexMapping:[C

    .line 119
    iget-object v0, p0, Lcom/parse/codec/language/Soundex;->soundexMapping:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    return-void
.end method

.method private getMappingCode(Ljava/lang/String;I)C
    .locals 5

    .prologue
    const/16 v4, 0x57

    const/16 v3, 0x48

    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/parse/codec/language/Soundex;->map(C)C

    move-result v0

    .line 184
    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    .line 185
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 186
    if-eq v3, v1, :cond_0

    if-ne v4, v1, :cond_2

    .line 187
    :cond_0
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 188
    invoke-direct {p0, v1}, Lcom/parse/codec/language/Soundex;->map(C)C

    move-result v2

    .line 189
    if-eq v2, v0, :cond_1

    if-eq v3, v1, :cond_1

    if-ne v4, v1, :cond_2

    .line 190
    :cond_1
    const/4 v0, 0x0

    .line 194
    :cond_2
    return v0
.end method

.method private getSoundexMapping()[C
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/parse/codec/language/Soundex;->soundexMapping:[C

    return-object v0
.end method

.method private map(C)C
    .locals 3

    .prologue
    .line 226
    add-int/lit8 v0, p1, -0x41

    .line 227
    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/parse/codec/language/Soundex;->getSoundexMapping()[C

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The character is not mapped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/parse/codec/language/Soundex;->getSoundexMapping()[C

    move-result-object v1

    aget-char v0, v1, v0

    return v0
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 81
    invoke-static {p0, p1, p2}, Lcom/parse/codec/language/SoundexUtils;->difference(Lcom/parse/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 148
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/parse/codec/EncoderException;

    const-string v1, "Parameter supplied to Soundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lcom/parse/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parse/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/parse/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/parse/codec/language/Soundex;->maxLength:I

    return v0
.end method

.method public setMaxLength(I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/parse/codec/language/Soundex;->maxLength:I

    .line 242
    return-void
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 254
    if-nez p1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 276
    :goto_0
    return-object v0

    .line 257
    :cond_0
    invoke-static {p1}, Lcom/parse/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v4

    .line 259
    goto :goto_0

    .line 261
    :cond_1
    const/4 v1, 0x4

    new-array v5, v1, [C

    fill-array-data v5, :array_0

    .line 264
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v5, v2

    .line 266
    invoke-direct {p0, v4, v2}, Lcom/parse/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v1

    move v3, v1

    move v1, v0

    .line 267
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    array-length v2, v5

    if-ge v0, v2, :cond_3

    .line 268
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v4, v1}, Lcom/parse/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v1

    .line 269
    if-eqz v1, :cond_4

    .line 270
    const/16 v6, 0x30

    if-eq v1, v6, :cond_2

    if-eq v1, v3, :cond_2

    .line 271
    add-int/lit8 v3, v0, 0x1

    aput-char v1, v5, v0

    move v0, v3

    :cond_2
    move v3, v1

    move v1, v2

    .line 273
    goto :goto_1

    .line 276
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 261
    nop

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method
