.class public Lqa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z

.field private static final c:Lqa;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lqb;",
            "Lqm",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lqa;->a:Z

    .line 131
    new-instance v0, Lqa;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lqa;-><init>(Z)V

    sput-object v0, Lqa;->c:Lqa;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqa;->b:Ljava/util/Map;

    .line 113
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lqa;->b:Ljava/util/Map;

    .line 130
    return-void
.end method

.method public static a()Lqa;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lqa;->c:Lqa;

    return-object v0
.end method


# virtual methods
.method public a(Lqy;I)Lqm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lqy;",
            ">(TContainingType;I)",
            "Lqm",
            "<TContainingType;*>;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lqa;->b:Ljava/util/Map;

    new-instance v1, Lqb;

    invoke-direct {v1, p1, p2}, Lqb;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqm;

    return-object v0
.end method
