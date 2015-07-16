.class public Lcom/yik/yak/ui/view/LinkDetectingEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private a:LFN;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LFO;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->b:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->c:Z

    .line 31
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->b:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->c:Z

    .line 36
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->b:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->c:Z

    .line 41
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a()V

    .line 42
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-eqz p4, :cond_4

    .line 134
    invoke-interface {p4, p3, p1}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v9, v2

    .line 139
    :goto_1
    array-length v3, p2

    if-ge v9, v3, :cond_3

    .line 140
    aget-object v3, p2, v9

    aget-object v4, p2, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    aget-object v6, p2, v9

    aget-object v3, p2, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, v0

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p2, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    :goto_2
    if-nez v1, :cond_1

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    return-object v0

    .line 139
    :cond_2
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LFO;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 117
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 119
    if-eqz p5, :cond_1

    invoke-interface {p5, p2, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    :cond_1
    new-instance v3, LFO;

    invoke-direct {v3}, LFO;-><init>()V

    .line 121
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p4, v0, p6}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 123
    iput-object v4, v3, LFO;->a:Ljava/lang/String;

    .line 124
    iput v1, v3, LFO;->b:I

    .line 125
    iput v2, v3, LFO;->c:I

    .line 127
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/view/LinkDetectingEditText;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->c:Z

    return v0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/view/LinkDetectingEditText;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->f()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a:LFN;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a:LFN;

    invoke-interface {v0}, LFN;->c()V

    .line 83
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a:LFN;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a:LFN;

    invoke-interface {v0}, LFN;->b()V

    .line 89
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a:LFN;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a:LFN;

    invoke-interface {v0}, LFN;->a()V

    .line 95
    :cond_0
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "http://"

    aput-object v5, v4, v0

    const-string v0, "https://"

    aput-object v0, v4, v7

    const/4 v0, 0x2

    const-string v5, "rtsp://"

    aput-object v5, v4, v0

    sget-object v5, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->c()V

    .line 109
    :goto_0
    iput-object v1, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->b:Ljava/util/ArrayList;

    .line 110
    return-void

    .line 103
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->d()V

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->e()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setAutoLinkMask(I)V

    .line 46
    new-instance v0, LFM;

    invoke-direct {v0, p0}, LFM;-><init>(Lcom/yik/yak/ui/view/LinkDetectingEditText;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 69
    iget-object v1, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLinksEnabled(Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->c:Z

    .line 162
    return-void
.end method

.method public setOnLinkAddedOrEditedListener(LFN;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yik/yak/ui/view/LinkDetectingEditText;->a:LFN;

    .line 77
    return-void
.end method
