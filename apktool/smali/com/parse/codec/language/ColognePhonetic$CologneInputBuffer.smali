.class Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;
.super Lcom/parse/codec/language/ColognePhonetic$CologneBuffer;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/parse/codec/language/ColognePhonetic;


# direct methods
.method public constructor <init>(Lcom/parse/codec/language/ColognePhonetic;[C)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->this$0:Lcom/parse/codec/language/ColognePhonetic;

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/parse/codec/language/ColognePhonetic$CologneBuffer;-><init>(Lcom/parse/codec/language/ColognePhonetic;[C)V

    .line 235
    return-void
.end method


# virtual methods
.method public addLeft(C)V
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    .line 239
    iget-object v0, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    invoke-virtual {p0}, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->getNextPos()I

    move-result v1

    aput-char p1, v0, v1

    .line 240
    return-void
.end method

.method protected copyData(II)[C
    .locals 4

    .prologue
    .line 243
    new-array v0, p2, [C

    .line 244
    iget-object v1, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    iget-object v2, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    array-length v2, v2

    iget v3, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    return-object v0
.end method

.method public getNextChar()C
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    invoke-virtual {p0}, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->getNextPos()I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method protected getNextPos()I
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    array-length v0, v0

    iget v1, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public removeNext()C
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->getNextChar()C

    move-result v0

    .line 258
    iget v1, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parse/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    .line 259
    return v0
.end method
