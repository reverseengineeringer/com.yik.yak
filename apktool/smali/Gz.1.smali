.class LGz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGw;


# instance fields
.field private a:[I

.field private b:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LGy;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, LGz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 180
    const/4 v0, -0x1

    return v0
.end method

.method varargs a([I)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, LGz;->a:[I

    .line 190
    return-void
.end method

.method varargs b([I)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, LGz;->b:[I

    .line 194
    return-void
.end method
