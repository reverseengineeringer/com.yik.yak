.class Lcom/parse/gdata/UnicodeEscaper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field decodedChars:[C

.field pendingHighSurrogate:I

.field final synthetic this$0:Lcom/parse/gdata/UnicodeEscaper;

.field final synthetic val$out:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lcom/parse/gdata/UnicodeEscaper;Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 257
    iput-object p1, p0, Lcom/parse/gdata/UnicodeEscaper$1;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    iput-object p2, p0, Lcom/parse/gdata/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/gdata/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/parse/gdata/UnicodeEscaper$1;->decodedChars:[C

    return-void
.end method

.method private outputChars([CI)V
    .locals 3

    .prologue
    .line 369
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 370
    iget-object v1, p0, Lcom/parse/gdata/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    aget-char v2, p1, v0

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 331
    iget v0, p0, Lcom/parse/gdata/UnicodeEscaper$1;->pendingHighSurrogate:I

    if-eq v0, v2, :cond_2

    .line 334
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected low surrogate character but got \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/parse/gdata/UnicodeEscaper$1;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    iget v1, p0, Lcom/parse/gdata/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v1, v1

    invoke-static {v1, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parse/gdata/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 341
    if-eqz v0, :cond_1

    .line 342
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/parse/gdata/UnicodeEscaper$1;->outputChars([CI)V

    .line 347
    :goto_0
    iput v2, p0, Lcom/parse/gdata/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 365
    :goto_1
    return-object p0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/parse/gdata/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget v1, p0, Lcom/parse/gdata/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v1, v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 345
    iget-object v0, p0, Lcom/parse/gdata/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 348
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iput p1, p0, Lcom/parse/gdata/UnicodeEscaper$1;->pendingHighSurrogate:I

    goto :goto_1

    .line 352
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected low surrogate character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/parse/gdata/UnicodeEscaper$1;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    invoke-virtual {v0, p1}, Lcom/parse/gdata/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 359
    if-eqz v0, :cond_5

    .line 360
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/parse/gdata/UnicodeEscaper$1;->outputChars([CI)V

    goto :goto_1

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/parse/gdata/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/gdata/UnicodeEscaper$1;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 267
    .line 268
    if-ge p2, p3, :cond_2

    .line 273
    iget v0, p0, Lcom/parse/gdata/UnicodeEscaper$1;->pendingHighSurrogate:I

    if-eq v0, v4, :cond_8

    .line 276
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 277
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected low surrogate character but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/parse/gdata/UnicodeEscaper$1;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    iget v3, p0, Lcom/parse/gdata/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v3, v3

    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/parse/gdata/UnicodeEscaper;->escape(I)[C

    move-result-object v1

    .line 283
    if-eqz v1, :cond_3

    .line 286
    array-length v2, v1

    invoke-direct {p0, v1, v2}, Lcom/parse/gdata/UnicodeEscaper$1;->outputChars([CI)V

    .line 287
    add-int/lit8 p2, p2, 0x1

    .line 293
    :goto_0
    iput v4, p0, Lcom/parse/gdata/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 297
    :goto_1
    iget-object v1, p0, Lcom/parse/gdata/UnicodeEscaper$1;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    invoke-virtual {v1, p1, v0, p3}, Lcom/parse/gdata/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 298
    if-le v1, p2, :cond_1

    .line 299
    iget-object v0, p0, Lcom/parse/gdata/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 301
    :cond_1
    if-ne v1, p3, :cond_4

    .line 327
    :cond_2
    :goto_2
    return-object p0

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/parse/gdata/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget v2, p0, Lcom/parse/gdata/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v2, v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 305
    :cond_4
    invoke-static {p1, v1, p3}, Lcom/parse/gdata/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 306
    if-gez v0, :cond_5

    .line 309
    neg-int v0, v0

    iput v0, p0, Lcom/parse/gdata/UnicodeEscaper$1;->pendingHighSurrogate:I

    goto :goto_2

    .line 313
    :cond_5
    iget-object v2, p0, Lcom/parse/gdata/UnicodeEscaper$1;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    invoke-virtual {v2, v0}, Lcom/parse/gdata/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    .line 314
    if-eqz v2, :cond_6

    .line 315
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/parse/gdata/UnicodeEscaper$1;->outputChars([CI)V

    .line 323
    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    :goto_4
    add-int p2, v1, v0

    move v0, p2

    .line 325
    goto :goto_1

    .line 319
    :cond_6
    iget-object v2, p0, Lcom/parse/gdata/UnicodeEscaper$1;->decodedChars:[C

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v2

    .line 320
    iget-object v3, p0, Lcom/parse/gdata/UnicodeEscaper$1;->decodedChars:[C

    invoke-direct {p0, v3, v2}, Lcom/parse/gdata/UnicodeEscaper$1;->outputChars([CI)V

    goto :goto_3

    .line 323
    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    move v0, p2

    goto :goto_1
.end method
