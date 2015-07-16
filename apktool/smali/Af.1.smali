.class public LAf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Landroid/content/Context;

.field private c:[LAz;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x5

    iput v0, p0, LAf;->a:I

    .line 36
    iput-object p1, p0, LAf;->b:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, LAf;->b()[Ljava/lang/String;

    .line 40
    return-void
.end method

.method private a(Lorg/json/JSONArray;)[LAz;
    .locals 4

    .prologue
    .line 139
    new-instance v1, LAr;

    invoke-direct {v1}, LAr;-><init>()V

    .line 140
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v2, v0, [LAz;

    .line 142
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 143
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 144
    invoke-virtual {v1, v3}, LAr;->a(Lorg/json/JSONObject;)LAz;

    move-result-object v3

    aput-object v3, v2, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-object v2
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, LAf;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 154
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 155
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 156
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 157
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()[LAz;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, LAf;->c()[LAz;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, LAf;->d()[LAz;

    move-result-object v1

    .line 131
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [LAz;

    .line 132
    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    return-object v2
.end method


# virtual methods
.method public a(LAz;)I
    .locals 5

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-object v0, p1, LAz;->f:[I

    array-length v0, v0

    if-nez v0, :cond_2

    .line 112
    :cond_0
    const/4 v1, 0x5

    .line 125
    :cond_1
    return v1

    .line 115
    :cond_2
    iget-object v3, p1, LAz;->f:[I

    .line 117
    const v1, 0x7fffffff

    .line 119
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    .line 120
    if-ge v0, v1, :cond_3

    .line 119
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public a(I)LAz;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, LAf;->a()[LAz;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Ljava/lang/String;)LAz;
    .locals 5

    .prologue
    .line 98
    invoke-virtual {p0}, LAf;->a()[LAz;

    move-result-object v2

    .line 100
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 101
    iget-object v4, v0, LAz;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    :goto_1
    return-object v0

    .line 100
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_1
    const-string v0, "USA"

    invoke-virtual {p0, v0}, LAf;->a(Ljava/lang/String;)LAz;

    move-result-object v0

    goto :goto_1
.end method

.method public a()[LAz;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, LAf;->c:[LAz;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, LAf;->e()[LAz;

    move-result-object v0

    iput-object v0, p0, LAf;->c:[LAz;

    .line 55
    :cond_0
    iget-object v0, p0, LAf;->c:[LAz;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, LAf;->d:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, LAf;->a()[LAz;

    move-result-object v1

    .line 61
    array-length v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, LAf;->d:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 64
    iget-object v2, p0, LAf;->d:[Ljava/lang/String;

    aget-object v3, v1, v0

    iget-object v3, v3, LAz;->d:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, LAf;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public c()[LAz;
    .locals 2

    .prologue
    .line 73
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const v1, 0x7f070001

    invoke-direct {p0, v1}, LAf;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, v0}, LAf;->a(Lorg/json/JSONArray;)[LAz;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()[LAz;
    .locals 2

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const v1, 0x7f070002

    invoke-direct {p0, v1}, LAf;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, v0}, LAf;->a(Lorg/json/JSONArray;)[LAz;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method
